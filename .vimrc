set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'

call vundle#end()          
filetype plugin indent on   

autocmd VimEnter * NERDTree 

set background=dark
let g:solarized_termcolors=256
se t_Co=256
colorscheme solarized

let mapleader=","

"set incremantal search on
set incsearch
"highlight all mactchin 
set hlsearch
"set line number
set number

"You can set the directory where the swap files are stored, so they don't
"clutter your normal directories:
set swapfile
set dir=~/tmp
set shortmess+=A
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"for yanking across terminal
set clipboard=unnamed

set paste
