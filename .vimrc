"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'andviro/flake8-vim'
Plugin 'crusoexia/vim-monokai'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

set t_Co=256
syntax on
colorscheme monokai

set cursorline
set nu
set autoindent
set tabstop=4
set expandtab
set shiftwidth=4 


autocmd vimenter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
au BufNewFile,BufRead *.py let g:PyFlakeOnWrite = 1
map <C-l> :PyFlakeAuto<CR>
