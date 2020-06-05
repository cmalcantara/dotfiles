" NVIM PLUGINS (vim-plug)

"start vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'dsolstad/vim-wombat256i'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEYBOARD MAPPINGS

" Map the leader key to SPACE
let mapleader="\<SPACE>"		

"Map jk to ESC
imap jk <Esc>		

" Map j and k to gj and gk
nnoremap k gk			
nnoremap j gj
nnoremap gk k
nnoremap gj k

" Quickly traverse vim's lists
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> b] :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> B] :blast<CR>

"Map SHIFT + TAB to literal TAB
"inoremap <S-Tab> <C-V><Tab> 	

" Map CTRL + P to UP in command mode
cnoremap <C-p> <Up>		
" Map CTRL + N to DOWN in command mode
cnoremap <C-n> <Down>	
" Map Esc to escape terminal mode in neovim
tnoremap <Esc> <C-\><C-n>  	

" Improve navigation of buffers
"tnoremap <A-h> <C-\><C-n><C-w>h	
"tnoremap <A-j> <C-\><C-n><C-w>j	
"tnoremap <A-k> <C-\><C-n><C-w>k	
"tnoremap <A-l> <C-\><C-n><C-w>l	
"nnoremap <A-h>  <C-w>h
"nnoremap <A-j>  <C-w>j
"nnoremap <A-k>  <C-w>k
"nnoremap <A-l>  <C-w>l
"nnoremap <A-v>  <C-w>v
"

" Spawns a terminal buffer
nnoremap <leader>t :terminal<CR>

" Calls the function NumberToggle()
nnoremap <leader>r :call NumberToggle()<CR>
" Use <C-L> to clear the highlighting of search
if maparg('<C-L>', 'n') ==# ''	
	nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM SETTINGS


"Show current mode.
set showmode			

"Show the line and column numbers of the ruler
set ruler			

"Show the line numbers on the left
set number			

"Moves the line numbers depending on cursor
set relativenumber		

"Indentation amount for < and >
set shiftwidth=8		

"Render TABs using this many spaces
set tabstop=8			

"Ignores cases in search
set ignorecase			

"Insert spaces when TAB is pressed
"set expandtab			

"Hard-wrap long lines 
set textwidth=80		

"Highlights search; auto in nvim
"set hlsearch			

"Sets command-mode history; auto in nvim
"set history=10000		

"Improves command-mode completion
"set wildmenu=full		

"Turns on syntax highlighting; auto in nvim
"set syntax			

"Confirms Unsaved Changes
set confirm			

"Sets encoding to UTF-8; auto in nvim
"set encoding=utf-8		

"Treat all numbers as decimal
set nrformats=			

""More natural splits
"Horizontal split below current.
set splitbelow			

" Vertical split to right of current.
set splitright			

" Uses dark background of colorscheme
set background=dark	

" Sets colorscheme
colorscheme wombat256i		


" syntax highlighting only when the terminal supports colors
if &t_Co > 1
   syntax enable
endif


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



