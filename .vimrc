syntax on
filetype plugin indent on
color ron
set autowrite
set nocompatible
set encoding=utf-8
set listchars+=space:￮ "u+ffee


autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab autoindent
autocmd FileType css  setlocal ts=2 sts=2 sw=2 expandtab autoindent
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab autoindent

call plug#begin()
Plug 'JuliaEditorSupport/julia-vim'
call plug#end()

