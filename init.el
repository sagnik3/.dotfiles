;; @sagnik3 emacs config
;; Dated: 26 Feb ,2022

;; make available package functions

(require 'package)

;; add a new package source
(customize-set-variable 'package-archives
			(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/")))

;;initialize package list
(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refersh-contents))

;; only evalaute this when compiling this file
(eval-when-compile
  ;;for each package on the list do

  (dolist (package '(use-package diminish bind-key))
    ;;instsall if not yet installed
    (unless (package-installed-p package)
      (package-install package))
    ;;require package making it available on the rest of the configuration
    (require package)))


;;magit for GIT interface
(use-package magit
    :ensure t
    :bind ("C-c m s" . magit-status)) 

;; vscode dark theme : https://github.com/ianyepan/vscode-dark-plus-emacs-theme

(use-package vscode-dark-plus-theme
	     :ensure t
	     :config
	     (load-theme 'vscode-dark-plus t))
       
	     
