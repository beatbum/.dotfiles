set nocompatible "This fixes the problem where arrow keys do not function properly on some systems.

filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ayu-theme/ayu-vim'
Plugin 'scrooloose/nerdtree'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()            
filetype plugin indent on    
set t_Co=256

syntax on  "Enables syntax highlighting for programming languages
set mouse=a  "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages
set backspace=2  "This makes the backspace key function like it does in other programs.
set tabstop=4  "How much space Vim gives to a tab
set number  "Enables line numbering
set smarttab  "Improves tabbing
set shiftwidth=4  "Assists code formatting

"PEP8 for python files"
au BufNewFile,BufRead *.py
	\set tabstop=4
	\set softtabstop=4
	\set shiftwidth=4
	\set textwidth = 79
	\set expandtab
	\set autoindent
	\set fileformat = unix;
"End PEP8 for python files"

"Begin indenting for web
au BufNewFile,BufRead *.js, *.html, *.css
	\set tabstop = 2
	\set softtabstop = 2
	\set shiftwidth = 2
"End indenting for web"

set foldmethod=manual  "Lets you hide sections of code

"--- The following commands make the navigation keys work like standard editors
imap <silent> <down> <c-o>gj
imap <silent> <up> <c-o>gk
nmap <silent> <down> gj
nmap <silent> <up> gk
"--- Ends navigation commands

"--- Settings for ayu theme
"set termguicolors
let ayucolor="dark"

colorscheme elflord  "Changes the color scheme. Change this to your liking. Lookin /usr/share/vim/vim61/colors/ for options.

set clipboard+=unnamed

set splitbelow
set splitright
set wildmenu
set laststatus=2
