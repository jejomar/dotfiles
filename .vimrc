" Theming
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_gruvbox_dark_hard'

" Set leader key
let mapleader = " "

" Vertically center document when entering insert mode
autocmd InsertEnter * norm zz

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" --- Bindings ---- "

" General Settings
syntax on
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

" Install your plugins here
call plug#begin()

Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

