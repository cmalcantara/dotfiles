imap jk <Esc>			" Map jk to ESC
nnoremap k gk			" Map j and k to gj and gk
nnoremap j gj
nnoremap gk k
nnoremap gj k
nnoremap <silent> [b :bprevious<CR>	" Quickly traverse vim's lists
nnoremap <silent> b] :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> B] :blast<CR>

"inoremap <S-Tab> <C-V><Tab> 	" Map SHIFT + TAB to literal TAB

cnoremap <C-p> <Up>		" Map CTRL + P to UP in command mode
cnoremap <C-n> <Down>		" Map CTRL + N to DOWN in command mode
tnoremap <Esc> <C-\><C-n>  	" Map Esc to escape terminal mode in neovim

"tnoremap <A-h> <C-\><C-n><C-w>h	" Improve navigation of buffers
"tnoremap <A-j> <C-\><C-n><C-w>j	
"tnoremap <A-k> <C-\><C-n><C-w>k	
"tnoremap <A-l> <C-\><C-n><C-w>l	
"nnoremap <A-h>  <C-w>h
"nnoremap <A-j>  <C-w>j
"nnoremap <A-k>  <C-w>k
"nnoremap <A-l>  <C-w>l
"nnoremap <A-v>  <C-w>v

let mapleader="\<SPACE>"		" Map the leader key to SPACE

" Spawns a terminal buffer
nnoremap <leader>t :terminal<CR>

" Calls the function NumberToggle()
nnoremap <leader>r :call NumberToggle()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmode			" Show current mode.
set ruler			" Show the line and column numbers of the ruler
set number			" Show the line numbers on the left
set relativenumber		" Moves the line numbers depending on cursor
set shiftwidth=8		" Indentation amount for < and >
set tabstop=8			" Render TABs using this many spaces
set ignorecase			" Ignores cases in search
"set expandtab			" Insert spaces when TAB is pressed
set textwidth=80		" Hard-wrap long lines 
"set hlsearch			" Highlights search; auto in nvim
"set history=10000		" Sets command-mode history; auto in nvim
"set wildmenu=full		" Improves command-mode completion
"set syntax			" Turns on syntax highlighting; auto in nvim

if maparg('<C-L>', 'n') ==# ''	" Use <C-L> to clear the highlighting of search
	nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set background=dark		" Uses dark background of colorscheme
colorscheme apprentice		" Sets colorscheme
set confirm			" Confirms Unsaved Changes
"set encoding=utf-8		" Sets encoding to UTF-8; auto in nvim
set nrformats=			" Treat all numbers as decimal

" More natural splits
set splitbelow			" Horizontal split below current.
set splitright			" Vertical split to right of current.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Relative numbering
"Function! NumberToggle()
"	if (&relativenumber == 1)
"		set nornu
"		set number
"	else
"		set relativenumber
"	endif
"Endfunc


