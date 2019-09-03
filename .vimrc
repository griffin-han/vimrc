"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
set encoding=utf-8 
set termencoding=utf-8
set fileencodings=utf-8,gbk,latin1
set backspace=2


"vundle block start ----------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
call plug#begin('~/.vim/plugged')
"""""
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'tomasr/molokai'
Plug 'easymotion/vim-easymotion'
Plug 'tomtom/tcomment_vim'
Plug 'raimondi/delimitmate'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
Plug 'andviro/flake8-vim'
Plug 'tell-k/vim-autopep8'
Plug 'romainl/vim-qf'
""""""
" Plug 'tmhedberg/simpylfold'

" Plug 'python-rope/rope'
" Plug 'python-rope/ropevim'

call plug#end()

" call vundle#end()            " required
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
let g:jedi#show_call_signatures = "2"
set noshowmode
" map <C-l> :Yapf --style google<CR>
map <C-l> :call Autopep8()<CR>
let g:autopep8_disable_show_diff=1
let g:PyFlakeDisabledMessages = 'E226,E309'

au BufNewFile,BufRead *.py let g:PyFlakeOnWrite = 1

let g:SimpylFold_fold_import = 0
" plugin config end --------------


map <C-y> :set invpaste paste? <CR>
" use tab can switch line number
" map <C-i> :set nu! <CR>

set t_Co=256
syntax on   " lang hightlight
set nu
set cursorline
set autoindent  " same indent as previous line
set expandtab " trans tab to spaces
set softtabstop=4 "trans how many spaces for a tab
set shiftwidth=4  " when use << or >> to indent or unindent: how many characters
set scrolloff=10  " let 10 lines before/after cursor during scroll
