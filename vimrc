execute pathogen#infect()

set nocompatible

filetype indent plugin on
set omnifunc=syntaxcomplete#Complete

syntax on " syntax highlighting

set hidden " allows switching between buffers without saving

" enables "visual" wrapping and turns off physical line wrapping (ie: automatic insertion of newlines)
set wrap
set textwidth=0 wrapmargin=0

set wildmenu " graphical command line completion

set lazyredraw " only redraw when we need too (should speed up macros)

set showmatch " highlight matching {[()]} (I think this is on by default)

set incsearch " search as characters are entered
set hlsearch " highlights searches

" search is case insensitive, except when using capital letters
set ignorecase
set smartcase

set relativenumber " relative line numbers
set cursorline " highlight current line

set background=dark " dark background
colorscheme molokai

set tabstop=4 " tabs read in file are 4 spaces wide
set shiftwidth=4 " indentation with >> and << are 4 spaces wide
set softtabstop=4 " tabs created while editing are 4 spaces wide
set expandtab " tabs are spaces

"""""""""""""""""
" AUTO COMMANDS "
"""""""""""""""""

" folds on indent for markdown (.mkd) files
autocmd FileType markdown setlocal foldmethod=indent

""""""""""""""""
" KEY BINDINGS "
""""""""""""""""

nnoremap <space> :

nnoremap S :w<cr>

nnoremap J :bp<cr>
nnoremap K :bn<cr>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

map Y y$

" close buffer without closing window
nnoremap <C-c> :bp\|bd #<CR>

inoremap </ </<C-X><C-O>

"""""""""""""""
" VIM-AIRLINE "
"""""""""""""""

set laststatus=2

let g:airline_theme="dark"

let g:airline#extensions#tabline#enabled = 1

let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'

