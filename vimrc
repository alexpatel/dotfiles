execute pathogen#infect()
filetype plugin indent on					

let mapleader=","							" Change leader from \ to ,
set nocompatible							" No Vi compatibility
set whichwrap+=h,l							" Allow movement onto next/prev line with 'h, l' 
set backspace=indent,eol,start				" Allow backspace in insert mode
set cursorline								" Highlight cursorline
set mouse=nv								" Allow mouse in normal mode
set ruler									" Show cursor position
set shortmess=atI							" Don't show intro message
set title									" Show filename in window titlebar
set showcmd									" Show partial command as it's being typed
set linebreak								" Don't wrap text in middle of word
set directory=$HOME/.vim/swapdir			" Swapfile storage dir
set clipboard=unnamed						" Access X11 Clipboard by default

" Color scheme
set t_Co=256
colorscheme jellybeans 
syntax enable

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
set tabstop=4							
set softtabstop=4
set smarttab
set expandtab

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

" Move to next/last parentheses	
onoremap in( :<c-u>normal! f(vi(<cr>		
onoremap il( :<c-u>normal! F)vi(<cr>

set undofile								" Keeps persistent undo file 
set undodir=$HOME/.vim/undodir
