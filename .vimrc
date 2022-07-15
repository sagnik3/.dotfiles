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

"gruvbox dark theme 
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"vimwiki :- for note taking 
Plug 'vimwiki/vimwiki'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'


let g:airline_theme = 'distinguished'

"colorscheme space-vim-dark
colorscheme gruvbox
let g:gruvbox_contrast_dark="medium"

set laststatus=2
set termguicolors
set clipboard=unnamedplus,unnamed,autoselect

"vimwiki config 
let g:vimwiki_list = [{'path': '~/Documents/notes/', 'syntax': 'markdown', 'ext': '.md'}]
