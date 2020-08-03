" source $HOME/.config/nvim/plug-config/coc.vim

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'flazz/vim-colorschemes'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'turbio/bracey.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'romainl/vim-cool' "disable highlight after search
Plug 'machakann/vim-highlightedyank'

" Plug 'liuchengxu/vim-which-key'
call plug#end()
 
set number
set relativenumber
set termguicolors
set hidden
set ignorecase
set smartcase
set clipboard=unnamed
set colorcolumn=80
set mouse=a
set noswapfile
set scrolloff=5
set shiftwidth=4
set expandtab
set splitbelow
set splitright
set nowrap
set updatetime=50
set shortmess+=c

set textwidth=80
let g:python_highlight_all = 0

colorscheme gruvbox
set background=dark
let mapleader=','
let g:fzf_layout = {'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

noremap <space> :
nnoremap <C-p> :GFiles<CR>
" nmap <C-;> :Files<CR>
"consistent capital letter yanking
nnoremap Y y$

