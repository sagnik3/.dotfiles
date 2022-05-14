set nocompatible 
syntax on 
filetype plugin indent on 
set nu
set autoindent
set expandtab
set softtabstop =4
set shiftwidth =4
set hlsearch 
set mouse=a

"utf-8 support 
set encoding=utf-8

" config the plug 
"
call plug#begin()

Plug 'jiangmiao/auto-pairs'

"space vim dark 
Plug 'liuchengxu/space-vim-dark'

"goconfig 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


call plug#end()


colorscheme space-vim-dark

"setting up code folding 
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent 
    \ set fileformat=unix 


