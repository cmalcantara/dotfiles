" NVIM PLUGINS (vim-plug)

"start vim-plug
call plug#begin('~/.config/nvim/plugged')

"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }

Plug 'ryanoasis/vim-devicons'
"Plug 'skywind3000/asyncrun.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
""Plug 'ap/vim-css-color]'
"Plug 'simnalamburt/vim-mundo'

" TS Syntax
Plug 'HerringtonDarkholme/yats.vim' 

Plug 'tmhedberg/SimpylFold'

Plug 'morhetz/gruvbox'
"Plug 'dsolstad/vim-wombat256i'

call plug#end()

" command for editing snippets in vim
" CocCommand snippets.editSnippets

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEYBOARD MAPPINGS

" summary of keys
" gd - goes to definition 
" ctrl-o goes back
" [count]<leader>cc |NERDCommenterComment|
" :CocConfig - to change the prettier on save formatter


" Map the leader key to SPACE
let mapleader="\<SPACE>"		

"Mapping ofr undo visualization
nnoremap <F5> :MundoToggle<CR>

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
"cnoremap <C-p> <Up>		
" Map CTRL + N to DOWN in command mode
"cnoremap <C-n> <Down>	
" Map Esc to escape terminal mode in neovim
"tnoremap <Esc> <C-\><C-n>  	

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


"FZF

" Empty value to disable preview window altogether
let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

"command! -bang -nargs=? -complete=dir Files
    "\ call fzf#vim#files(<q-args>, fzf#vim#with_preview('up:60%'), <bang>0)

map <C-o> <Esc><Esc>:Files!<CR>
inoremap <C-o> <Esc><Esc>:BLines!<CR>
map <C-g> <Esc><Esc>:BCommits!<CR>

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

 " Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <C-d> <Plug>(coc-range-select)
"xmap <silent> <C-d> <Plug>(coc-range-select)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTREE SETTINGS


" Calls the function NumberToggle()
nnoremap <leader>r :call NumberToggle()<CR>
" Use <C-L> to clear the highlighting of search
if maparg('<C-L>', 'n') ==# ''	
	nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif
"NERDTree Toggles
nmap <C-n> :NERDTreeToggle<CR>

" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         


let g:NERDTreeIgnore = ['^node_modules$']

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"COC SETTINGS

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-python', 
  \ 'coc-html', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-clangd', 
  \ 'coc-flutter', 
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" N/VIM SETTINGS
"


""""""""""""
" TERMINAL
""""""""""""
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
" Spawns a terminal buffer
nnoremap <leader>t :call OpenTerminal()<CR>

"mouse scrolling functionality in vim terminal
function! ExitNormalMode()
    unmap <buffer> <silent> <RightMouse>
    call feedkeys("a")
endfunction

function! EnterNormalMode()
    if &buftype == 'terminal' && mode('') == 't'
        call feedkeys("\<c-w>N")
        call feedkeys("\<c-y>")
        map <buffer> <silent> <RightMouse> :call ExitNormalMode()<CR>
    endif
endfunction

tmap <silent> <ScrollWheelUp> <c-w>:call EnterNormalMode()<CR>



"Show current mode.
set showmode			

"Show the line and column numbers of the ruler
set ruler			

"Show the line numbers on the left
set number			

"Moves the line numbers depending on cursor
set relativenumber		

"Indentations
autocmd FileType c setlocal ts=8 sts=8 sw=8
autocmd FileType python setlocal ts=8 sts=8 sw=8

"Indentation amount for < and >
set shiftwidth=2

"Render TABs using this many spaces
set tabstop=2

"Ignores cases in search
set ignorecase			

"Insert spaces when TAB is pressed
"set expandtab			

"Hard-wrap long lines 
set textwidth=80		

" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo

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
" colorscheme wombat256i		
colorscheme gruvbox


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



