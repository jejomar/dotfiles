syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
"set relativenumber

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" powerline prompt
set laststatus=2

" plug
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'scrooloose/nerdtree'

call plug#end()

" gruvbox
colorscheme gruvbox
set background=dark

" nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif       "close nerdtree if no file is open
    " Hotkey for opening nerdtree (Ctrl+N)
    map <C-n> :NERDTreeToggle<CR>
