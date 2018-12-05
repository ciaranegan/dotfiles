" From https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
set nocompatible              " required
filetype off                  " required

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
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

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
