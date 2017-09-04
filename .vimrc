" tim pope's pathogen

execute pathogen#infect()
syntax on
filetype plugin indent on

" My own preferences

set nowrap         " turn off line wrapping by default

" From https://dougblack.io/words/a-good-vimrc.html

set relativenumber  " show relative line numbers
set showmatch       " highlight matching parenthesis or brace
set hlsearch        " highlight search matches
set scrolloff=3     " keep 3 lines above and below the cursor
set sidescroll=1    " sensible horizontal scrolling
set sidescrolloff=3 " keep 3 characters to the sides of cursor
set mouse=a         " mouse!
let mapleader=","   " leader is comma

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
" (leave <C-o> and <C-i> for jumping forward and backward)
" Down <C-y>
nnoremap <C-u> <C-e>
" Right zl
" Left zh

" yank to end of line
nnoremap Y y$

" Toggle software caps lock
imap <C-t> <Plug>CapsLockToggle

" NerdComment preferences
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDCommentEmptyLines = 1 " Allow commenting and inverting empty lines (useful when commenting a region)

" Allow navigating past end of line
set virtualedit=all

