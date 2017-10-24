" From https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za


" Python stuff
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


" Bad whitespace stuff
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" Leftover stuff
colorscheme colorsbox-stbright

set cursorline
set laststatus=2
set background=dark
set wrap
set tabstop=4
set expandtab
set shiftwidth=4
set ignorecase
set smartcase
set hlsearch
set showmatch
set incsearch
set autoindent
set vb
set number
set nocompatible
set mouse=a
set t_Co=256
set encoding=utf-8
set ffs=unix,mac,dos


syntax enable
syntax on
