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

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'


let g:airline_theme = 'distinguished'

colorscheme space-vim-dark
"colorscheme delek
set termguicolors

