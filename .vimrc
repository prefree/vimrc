set shell=/bin/bash

execute pathogen#infect()
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
filetype plugin indent on

" option name default optional ------------------------------------------------ 
" g:solarized_termcolors= 16 | 256 g:solarized_termtrans = 0 | 1 g:solarized_degrade = 0 | 1 g:solarized_bold = 1 | 0 g:solarized_underline = 1 | 0 g:solarized_italic = 1 | 0 g:solarized_contrast = "normal"| "high" or "low" g:solarized_visibility= "normal"| "high" or "low" ------------------------------------------------

"let g:solarized_termcolors=256
"let g:solarized_termtrans=0
"Taglist
nnoremap <silent> <F8> :TlistToggle<CR>

"mouse options
set mouse=a
nnoremap <silent> <F3> :set mouse="" <CR>
nnoremap <silent> <F4> :set mouse=a <CR>
if has ("mouse")
		set mouse-=a
endif

"ctrlp start
"set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_height = 15
"ctrlp end
set nobackup
set nocompatible
set backspace=indent,eol,start

set nu
set tabstop=4

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
