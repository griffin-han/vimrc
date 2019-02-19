" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set encoding=utf-8 
set termencoding=utf-8
set fileencodings=utf-8,gbk,latin1
set backspace=2


"vundle block start ----------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'tomasr/molokai'
Plugin 'easymotion/vim-easymotion'
Plugin 'tomtom/tcomment_vim'
Plugin 'raimondi/delimitmate'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
"Plugin 'google/yapf', { 'rtp': 'plugins/vim' }
Plugin 'mindriot101/vim-yapf'
Plugin 'andviro/flake8-vim'


call vundle#end()            " required
filetype plugin indent on    " required
" vundle block end ----------------


" plugin config start --------------
map <C-n> :NERDTreeToggle<CR>
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:UltiSnipsExpandTrigger="<tab>"

map f <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1
colorscheme molokai
"no jedi doc string window
autocmd FileType python setlocal completeopt-=preview

map <C-l> :Yapf<CR>

au BufNewFile,BufRead *.py let g:PyFlakeOnWrite = 1
" plugin config end --------------


set t_Co=256
syntax on   " lang hightlight
set nu
set cursorline
set autoindent  " same indent as previous line
set expandtab " trans tab to spaces
set softtabstop=4 "trans how many spaces for a tab
set shiftwidth=4  " when use << or >> to indent or unindent: how many characters
set scrolloff=10  " let 10 lines before/after cursor during scroll
