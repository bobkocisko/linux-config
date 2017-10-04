" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins

Plugin 'tpope/vim-sensible' " Sensible starting point for vim settings

Plugin 'mileszs/ack.vim'

Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy searching

Plugin 'scrooloose/nerdcommenter'

Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-capslock'

Plugin 'tpope/vim-dispatch' " Make command

Plugin 'tpope/vim-eunuch' " Unix utilities like the Move command

Plugin 'tpope/vim-fugitive' " Git integration

Plugin 'xolox/vim-misc' " Dependency of other xolox plugin

Plugin 'tpope/vim-obsession' " Session management with Obsession command

Plugin 'tpope/vim-repeat' " Enable '.' to work with plugin mapped commands

Plugin 'tpope/vim-sleuth' " Figure out tab spacing automatically

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate' " Snippets support
Plugin 'honza/vim-snippets'  " Specific snippets

Plugin 'tpope/vim-surround' " Change surrounding characters (eg double quote to single quote or xml tags)

Plugin 'stephpy/vim-yaml' " Fix the slow native yaml parsing

Plugin 'Valloric/YouCompleteMe' " Autocompletion while typing


" All plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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
set splitright      " open horizontal splits to the right
set splitbelow      " and vertical splits below
set switchbuf+=usetab,newtab " quicklist launches into new tab or finds existing tab
set autowrite       " automatically save on :make and other calls

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

" let g:session_directory = '.'
" let g:session_autoload = 'yes'
" let g:session_autosave = 'yes'
" let g:session_persist_globals = ['&makeprg']

let g:ctrlp_switch_buffer = 'Et' 

function! s:TripletFun(prefix)
  execute "tabedit " . "include/" . a:prefix . ".h"
  execute "vsp " . "src/" . a:prefix . "Impl.cpp"
  execute "wincmd h"
  execute "sp " . "include/" . a:prefix . "Impl.h"
endfunction
command! -nargs=1 Triplet call s:TripletFun(<f-args>)

" Jump to last tab with ,tl
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

source ~/.vimrc-local
