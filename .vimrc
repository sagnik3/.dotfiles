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

"coc-nvim // for adding some form of autocompletion 

Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'

" Git integration
Plug 'tpope/vim-fugitive'

" Switch to the begining and the end of a block by pressing %
Plug 'tmhedberg/matchit'

" Comment/Uncomment tool
Plug 'scrooloose/nerdcommenter'


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


"java for competitive programming 
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>


