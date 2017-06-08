
filetype off                  " required


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'vim-airline/vim-airline'
Plugin 'sirver/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-surround'
call vundle#end()          

syntax on
filetype plugin indent on   

"set paste

set background=light
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

"for yanking across system clipboard
set clipboard=unnamed

nmap <Leader>n :NERDTreeToggle<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" make backspace behave in a sane manner
set backspace=indent,eol,start

" Tab control
"set noexpandtab " tabs ftw
set expandtab
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=8 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

"jsx syntax and indent on .js files
let g:jsx_ext_required = 0

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"You can set the directory where the swap files are stored, so they don't
"clutter your normal directories:
set swapfile
set dir=~/.tmp
set shortmess+=A

let NERDTreeIgnore= ['\.pyc$']

nnoremap W w

let g:ycm_server_python_interpreter='/usr/bin/python'
set pastetoggle=<F10>

let g:loaded_youcompleteme = 1


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"
"make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"let g:UltiSnipsSnippetsDir="~/UltiSnips"
let g:UltiSnipsSnippetDirectories=[$HOME.'/UltiSnips']

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_check_on_open = 1

let g:syntastic_python_flake8_post_args='--ignore=E231,E501,E302,E226,E126,E225,E228,W291,E241,E124,E201,E128,E122,E702,E293,E203,E202,W391,W293,E221,E305'
"close nerdtree after opening the file
let  NERDTreeQuitOnOpen = 1

"nerd tree split in right with s
set splitright

"navigate using C
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" fix the shift O timelen issue for new line up
set timeout timeoutlen=5000 ttimeoutlen=100
