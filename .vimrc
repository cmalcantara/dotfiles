"Keymaps
imap jk <Esc>
inoremap <S-Tab> <C-V><Tab>

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

let mapleader=" "
map <leader>k :E<cr>

"going down virtual lines
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj k

"Puts Line Nubering
set number
set relativenumber
set autoindent


"Tabs equivalent to 8 spaces and 8 spaces is indentation
set tabstop=8
set shiftwidth=8
"set expandtab
"set textwidth=90

"Turn on Sytax Highlighting
syntax enable
set background=dark
colorscheme apprentice

"Confirms Unsaved Changes
set confirm

"Search"
 "highlight
 set hls

 "no search"
 set ignorecase

"Uses UTF-8"
set encoding=utf-8

"Treat all numbers as decimal
set nrformats=

"essential.vim
set nocompatible
filetype plugin on

"copy pasting
set clipboard=unnamed

"bash autocomplete
set wildmode=full

"Increase history
set history=200

