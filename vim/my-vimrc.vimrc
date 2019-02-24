set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required
syntax enable
set tabstop=4		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" turns tabs into spaces
set relativenumber	" Show relative line numbers to current position

set wildmenu        " Command-line completion
set showcmd         " Show partial commands in the last line of the screen
set hlsearch        " Highlight searches (use <C-L> to temporarily turn off highlighting; see the mapping of <C-L> below)

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

command! -nargs=+ Calc :!python -c "from math import *; print(<args>)"
