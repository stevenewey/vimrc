" enable pathogen
call pathogen#infect()

" enable syntax highlighting
syntax on

" enable language plugin auto-indenting
filetype indent plugin on

set modeline

" set tabs
set tabstop=8 expandtab shiftwidth=4 softtabstop=4 smarttab

" enable line numbers
set number

" disable vi backwards compatible mode
set nocompatible

" display info ruler
set ruler

" enable auto indent
set autoindent

" 79 char width for python
autocmd FileType python set textwidth=79

" run Flake8 on python files on save
autocmd BufWritePost *.py call Flake8()
