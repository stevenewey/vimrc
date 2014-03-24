" enable pathogen
call pathogen#infect()

set encoding=utf-8

" enable syntax highlighting
syntax enable

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
"set ruler

" enable auto indent
set autoindent

" 79 char width for python
autocmd FileType python set textwidth=79

" run Flake8 on python files on save
autocmd BufWritePost *.py call Flake8()

" 2 character indent for html/javascript
autocmd FileType html setlocal shiftwidth=2 tabstop=2 textwidth=0
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 textwidth=0
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 textwidth=0

" solarized theme
set background=dark
"let g:solarized_termtrans = 1
colorscheme solarized

" yank text to OSX clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" preserve indentation when pasting from OSX clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" powerline
"let g:Powerline_symbols = 'fancy'
set laststatus=2

" airline
let g:airline_powerline_fonts = 1

" backspace like normal
set backspace=2

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" map w!! to sudo saving
cmap w!! %!sudo tee > /dev/null %
