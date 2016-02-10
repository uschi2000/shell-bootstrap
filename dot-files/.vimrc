set backspace=indent,eol,start

set nocompatible
set ruler
set wildmenu

let g:vim_json_syntax_conceal = 0

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

map <C-e> <ESC>:w<CR>mz \ll \ls `z
imap <D-c> <M-c>
imap <D-i> <M-i>

map <C-O> mt<CR> :e %:p:s,.h$,.X123X,:s,.cc$,.h,:s,.X123X$,.cc,<CR> 't<CR>

syntax on
colorscheme ron

set lazyredraw 
set hlsearch
set textwidth=0
set sts=4
set shiftwidth=4
set autoindent
set expandtab
set smarttab
set cmdheight=4

set magic
" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" Add a bit extra margin to the left
" set foldcolumn=1

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set nospell

let c_comment_strings=1

set mousehide
set ch=2

set number

map <leader>pp :setlocal paste!<cr>
map <leader>np :setlocal nopaste!<cr>

map <C-h> :tabprev<CR>
map <C-l> :tabnext<CR>


map <silent> k gk
map <silent> j gj

filetype plugin indent on
set grepprg=grep\ -nH\ $*
