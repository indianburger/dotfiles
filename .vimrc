" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
if exists("&undodir")
	set undodir=~/.vim/undo
endif
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" keep buffers in background even when closed explicitly
set hidden
set foldmethod=indent
"tabs and tabbing
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

"autocomplete
set wildmenu
set wildmode=list:longest,full

" Enable mouse in all modes
set mouse=a
set autochdir

"search stuff
set ignorecase
set smartcase "caps means case sensitive
set incsearch
set hlsearch
:nmap \q :nohlsearch<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" Up and down are more logical with g..
nnoremap <silent> k gk
nnoremap <silent> j gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja
inoremap jj <esc>
inoremap kk <esc>

"" vundle settings
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'Syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-surround'
Bundle 'myusuf3/numbers.vim.git'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdcommenter'
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'gregsexton/MatchTag'
Bundle 'tpope/vim-unimpaired'
Bundle 'nelstrom/vim-visual-star-search'

let g:ctrlp_root_markers = ['perm.acl']
map <C-n> :NERDTreeToggle<CR>
map <C-N> :NERDTreeFind<CR>
let g:Powerline_symbols = 'fancy'
set laststatus=2
let g:syntastic_javascript_checkers = ['jshint']
" call the jshint config loader script for syntastic
:autocmd FileType javascript source $HOME/.vim/jshint-config-loader.vim

let g:ycm_key_list_select_completion = ['<Down>']


colorscheme wombat256mod

" This shows what you are typing as a command.  I love this!
set showcmd
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

syntax on

" Buffers
:nmap <C-e> :e#<CR>
:nmap ; :CtrlPBuffer<CR>
filetype plugin on
filetype indent on
set foldlevel=3

autocmd BufNewFile,BufRead *.json set syntax=javascript
autocmd BufNewFile,BufRead *.styl set syntax=scss

set guifont=Consolas:h13