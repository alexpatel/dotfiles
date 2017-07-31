syntax off
filetype plugin indent on

set nocp
" set rtp+=/path/to/rtp/that/included/pathogen/vim " if needed
call pathogen#infect()

let mapleader=","                               " Change leader from \ to ,
set nocompatible                                " No Vi compatibility
set whichwrap+=h,l                              " Allow movement onto next/prev line with 'h, l' 
set backspace=indent,eol,start                  " Allow backspace in insert mode
set cursorline                                  " Highlight cursorline
set mouse=nv                                    " Allow mouse in normal mode
set ruler                                       " Show cursor position
set shortmess=atI                               " Don't show intro message
set title                                       " Show filename in window titlebar
set showcmd                                     " Show partial command as it's being typed
set linebreak                                   " Don't wrap text in middle of word
set directory=$HOME/.vim/swapdir                " Swapfile storage dir
set clipboard=unnamed                           " Access X11 Clipboard by default
set modifiable                                  " Change contents of any buffer 
set noerrorbells                                " Disable bells on error
set backupdir=~/.vim/tmp,.                      " Backup directory
set directory=~/.vim/tmp,.                      " Backup directory
set nonu                                        " No line numbers
"set number                                     " Line numbers
"set numberwidth=5                              " Width of line number buffer
set autoindent                                  " Autoindent
set paste                                       " Smart text paste from other apps
set splitbelow                                  " Auto split horizontal window below
set splitright                                  " Auto split vertical window right
set scrolloff=5                                 " Keep at least 5 lines below the cursor
set mouse=r                                     " Mouse support
set breakindent                                 " preserve indent on wrap

" Spell-check highlighting
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
map ss :setlocal spell! spelllang=en_us<CR>

" Autosave
au FocusLost * silent! wa
set autowrite

" Tabs
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab

" Search
map <space> /
map <c-space> ?
set ignorecase                                  " Ignore case of searches
set hlsearch                                    " Highlight searches
set incsearch                                   " Search as chars are entered

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
noremap nt :NERDTreeToggle<CR>

" 80 columns
au BufRead,BufNewFile * setlocal textwidth=80

" tagbar
noremap tb :TagbarToggle<CR>

" ctrl-p
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'

" Vim-LaTeX
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
let Tex_FoldedSections=""
let Tex_FoldedEnvironments=""
let Tex_FoldedMisc=""

" make copy/pasting nice
function! ToggleMouse()
    if &mouse == 'a'
        set mouse=r
        set nonu
    else
        set mouse=a
        set nu
    endif
endfunction
nnoremap <leader>m :call ToggleMouse()<CR>

" show all tabs in a file
function! ToggleTabs()
    if &listchars == 'tab:>-'
        set listchars=
    else
        set listchars=tab:>-
    endif
endfunction
nnoremap <leader>t :call ToggleTabs()<CR>
