filetype plugin indent on					

call pathogen#infect()
call pathogen#helptags()

let mapleader=","							" Change leader from \ to ,
set nocompatible							" No Vi compatibility
set whichwrap+=h,l							" Allow movement onto next/prev line with 'h, l' 
set backspace=indent,eol,start						" Allow backspace in insert mode
set cursorline								" Highlight cursorline
set mouse=nv								" Allow mouse in normal mode
set ruler								" Show cursor position
set shortmess=atI							" Don't show intro message
set title		        					" Show filename in window titlebar
set showcmd								" Show partial command as it's being typed
set linebreak								" Don't wrap text in middle of word
set directory=$HOME/.vim/swapdir					" Swapfile storage dir
set clipboard=unnamed							" Access X11 Clipboard by default
set modifiable								" Change contents of any buffer 

" Backup directory
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.

" Color scheme
set t_Co=256
highlight Normal ctermfg=black ctermbg=white
colorscheme wombat
syntax enable
highlight CursorLine term=bold cterm=bold guibg=Grey40
highlight LineNr ctermfg=grey
highlight CursorLineNr ctermfg=white

" Line numbers
set number									
set numberwidth=5

" Autoindent
set autoindent								
set pastetoggle=<F2>

" Autosave
au FocusLost * silent! wa					
set autowrite	

" Tabs
set smarttab
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Search
map <space> /
map <c-space> ?
set ignorecase								" Ignore case of searches
set hlsearch								" Highlight searches
set incsearch								" Search as chars are entered

" Unhighlight search results
nmap <silent> <leader>n :silent nohl<cr>

" Number of matches to last search term
nmap <leader># :%s<C-R>/::gn<cr>

" '0' moves to first non-blank char on line: 
map 0 ^									

" Yank rest of line with 'Y'
map Y y$

" Save and quit
nnoremap qq :wq<cr>

" Redo
noremap rr <c-r>

" Add a line without changing position or leaving mode
map <leader>o :set paste<cr>m`o<esc>``:set nopaste<cr>
map <leader>O :set paste<cr>m`O<esc>``:set nopaste<cr>`

" Enter insert mode with 'jk'
inoremap jj  <esc>							

" Navigation on wrapped lines
nnoremap j gj								
nnoremap k gk

" Edit & source vimrc
nnoremap <leader>ev :tabnew $MYVIMRC<cr>	
nnoremap <leader>sv :source $MYVIMRC<cr>

" Move around tabs
noremap <S-H> gT
noremap <S-L> gt

" Move around sentences
noremap <S-J> (
noremap <S-K> )

" Fast vertical movement
noremap <c-j> 10j
noremap <c-k> 10k 

" Keeps persistent undo file 
set undofile								
set undodir=$HOME/.vim/undodir

" NERDTree
let NERDTreeIngore = ['\.pyc$']
function! NERDTreestartup()
	if 0 == argc()
		NERDTree
	end
endfunction

autocmd VimEnter * call NERDTreestartup()

" Split
set splitbelow
set splitright

" 80 columns
au BufRead,BufNewFile *.txt setlocal textwidth=80

" tagbar
noremap <leader>b :TagbarToggle<CR>
