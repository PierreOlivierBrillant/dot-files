call plug#begin('~/.vim/plugged')

Plug 'dylanaraps/wal.vim'

call plug#end()

set number
set mouse=a
set ttymouse=sgr

set expandtab
set tabstop=2

noremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

syntax on
filetype plugin indent on
colorscheme wal
