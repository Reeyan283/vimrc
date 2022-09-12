set nocompatible " Disable compatibility with vi.

filetype on " File type detection.

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'instant-markdown/vim-instant-markdown'

Bundle 'ron89/thesaurus_query.vim'

call vundle#end()

filetype plugin indent on " Load an indent file for the detected file type

syntax on

set number

" set cursorline

set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

set nobackup " Do not save backup files

set scrolloff=10 " Don't let cursor scroll below or above n number of lines while scrolling.

set nowrap

set incsearch " Incremental search.

set ignorecase
set smartcase

set showcmd

set showmode

set hlsearch

set history=1000

set wildmenu
set wildmode=list:longest


" .md
autocmd FileType markdown setlocal wrap
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType markdown setlocal number!
autocmd FileType markdown nnoremap <silent> j gj
autocmd FileType markdown nnoremap <silent> k gk
autocmd FileType markdown nnoremap <silent> $ g$
autocmd FileType markdown nnoremap <silent> 0 g0

" remaps
nnoremap <silent> <S-o> o<ESC>
nnoremap <silent> <C-S-o> O<ESC>
nnoremap <expr> <silent> 0 col('.') == match(getline('.'),'\S') + 1 ? '0' : '^'
nnoremap <silent> <dw> b dw

" plugin
let g:instant_markdown_autostart = 0
