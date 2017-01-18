" tim pope's pathogen

execute pathogen#infect()
syntax on
filetype plugin indent on

" My own preferences

set wrap!         " turn off line wrapping by default

" From https://dougblack.io/words/a-good-vimrc.html

set relativenumber " show relative line numbers
set showmatch      " highlight matching parenthesis or brace
set hlsearch       " highlight search matches
set scrolloff=3    " keep 3 lines above and below the cursor
let mapleader=","  " leader is comma

" turn off search highlight with ,<space>
nnoremap <leader><space> :nohlsearch<CR>

" jk is escape
inoremap jk <esc>

" navigate windows easily
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" simplify moving buffer around
nnoremap <C-u> <C-y>
nnoremap <C-i> <C-e>

nnoremap Y y$
