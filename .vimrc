" Plugins loading
call plug#begin()
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

" Theming
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_gruvbox_dark_hard'

" Set leader key
let mapleader = " "

" Vertically center document when entering insert mode
autocmd InsertEnter * norm zz

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" ---- General Key Mapping ---- "
" Only paste yanked text, not deleted
nnoremap <leader>p "0p
nnoremap <leader>P "0P

" Write only if something is changed
nnoremap <leader>w :up<CR>

" ---- Plugin Key Mapping ---- "
" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" General Settings
syntax on
set wrap
set nocompatible
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

" User Interface Options
set laststatus=2

" Autocompletion of commands
set wildmenu

" Fix splitting
set splitbelow splitright

" Allow easy buffer switching
set hidden

" Fix weird escape sequence of devicons
set t_RV=
