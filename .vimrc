colorscheme colorsbox-stbright

set nocompatible
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


" Nerdtree
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore = ['__pycache__', '\.class$', '\.pyc$', '\.o$', '\.d$', '\.crf$']
let g:NERDTreeBookmarksSort=1
let g:NERDTreeShowBookmarks=1


" supertab
let g:SuperTabNoCompleteAfter = ['^', ',', '\s']


" function to allow removal of selected buffers in ctrlp
" <C-p> then <C-z> to select and then <C-@> to remove buffer
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:100'
let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }
func! MyCtrlPMappings()
    nnoremap <buffer> <silent> <C-@> :call <sid>DeleteBuffer()<cr>
endfunc
func! s:DeleteBuffer()
    let line = getline('.')
    let bufid = line =~ '\[\d\+\*No Name\]$' ? str2nr(matchstr(line, '\d\+'))
        \ : fnamemodify(line[2:], ':p')
    exec "bd" bufid
    exec "norm \<F5>"
endfunc

let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*|/var/.*'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|(/tmp/)$',
  \ 'file': '\v\.(exe|so|dll|orig)$',
  \ }
let g:ctrlp_arg_map=1


" ctrlp
nmap <Leader>b :CtrlPBuffer<CR>
nmap <Leader>z :CtrlPMRU<CR>
nmap <Leader>. :CtrlPTag<CR>

nmap <Leader>e :Explore<CR>
nmap <Leader>f :Ack 
nmap <Leader>g :TagbarToggle<CR>
"nmap <Leader>j :CommandTJump<CR>
nmap <Leader>k :call DiffWithFileFromDisk()<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>m :NERDTreeMirror<CR>
nmap <Leader>t :NERDTreeFind<CR>
nmap <Leader>q <C-W>q<CR>
nmap <Leader>Q :qa!<CR>
nmap <Leader>U :UndotreeToggle<CR>
nmap <Leader>w :bp\|bd #<CR>
"nmap <Leader>z :FufFile<CR>

" quich finder
nnoremap ,f :call FilteringNew().addToParameter('alt', @/).run()<CR>
nnoremap ,F :call FilteringNew().parseQuery(input('>'), '\|').run()<CR>
nnoremap ,g :call FilteringGetForSource().return()<CR>

" sessions
let g:session_autosave = 'yes'

" Linux clipboard shortcuts - note that <CMD>ACVX work in MacVim by default
noremap <A-a> GVgg
noremap <A-c> "+y
noremap <A-v> "+p
noremap <A-x> "+x

" spell check
 nmap <Leader>l :setlocal spell! spelllang=en_gb<CR>

call pathogen#incubate()
call pathogen#helptags()
call pathogen#infect()

filetype plugin indent on

syntax enable
syntax on
