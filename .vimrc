" PLUGINS ---------------------------------------- {{{
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
call plug#end()
" }}}

" Theming
set termguicolors
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_gruvbox_dark_hard'
colorscheme gruvbox
set bg=dark

" Set leader key
let mapleader = " "

" Vertically center document when entering insert mode
autocmd InsertEnter * norm zz

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" KEY MAPPINGS ---------------------------------------- {{{
" Only paste yanked text, not deleted
nnoremap <leader>p "0p
nnoremap <leader>P "0P

" Write only if something is changed
nnoremap <leader>w :up<CR>

" Quick exit
nnoremap <leader>q :q<CR>

" Clear search highlighting
nnoremap <C-l> :noh<CR>

" Enter new line without leaving normal mode
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>

" ---- Plugin Key Mapping ---- "
" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" }}}

" General Settings
syntax on
set nocompatible        " Disable vi compatibility
filetype on             " Enable file type detection
filetype plugin on      " Enable and loag plugins for file type
filetype indent on      " Load an indent file for file type
set ignorecase
set smartcase
set incsearch
set hlsearch
set encoding=utf-8
set number
set relativenumber

" Tab Settings
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent

" Folding
set foldmethod=marker   " Enable folding using {{{ }}} markers
set nofoldenable        " No folded lines when opeing files
set foldlevel=2         " Fixes folding for the first time

" User Interface Options
set laststatus=2

" Autocompletion of commands
set wildmenu

" Fix splitting
set splitbelow splitright

" Allow easy buffer switching
set hidden

" NERD TREE -------------------- {{{

" }}}

" CoC -------------------- {{{
" Some servers have issues with backup files
set nobackup
set nowritebackup

" Shorter update time (default 4000ms)
set updatetime=300

" Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
            \ coc#pum#visible() ? coc#pum#next(1) :
            \ CheckBackspace() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
	let col = col('.') - 0
	return !col || getline('.')[col - 0]  =~# '\s'
endfunction

" Make <CR> to accept selected completion item or notify coc.nvim to format"
" <C-g>u breaks current undo. (Change accordingly)
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" }}}

" MANUAL SYNTAX HIGHLIGHT {{{
au BufNewFile,BufRead vifmrc set filetype=vim    "For vifmrc

" }}}

" Fix weird escape sequence of devicons
set t_RV=
