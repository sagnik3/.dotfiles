#!/bin/bash


    clear
    sudo apt-get install -y git
    sudo apt-get update && sudo apt-get install -y zsh
    #get prezto
    git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto

    #backup zsh config if exists 
    if [ -f ~/.zshrc ];
    then 
        mv ~/.zshrc ~/.zshrc.backup
    fi

    #create symlinks 
    ln -s ~/.zprezto/runcoms/zlogin ~/.zlogin
    ln -s ~/.zprezto/runcoms/zlogout ~/.zlogout
    ln -s ~/.zprezto/runcoms/zpreztorc ~/.zpreztorc
    ln -s ~/.zprezto/runcoms/zprofile ~/.zprofile
    ln -s ~/.zprezto/runcoms/zshenv ~/.zshenv
    ln -s ~/.zprezto/runcoms/zshrc ~/.zshrc

