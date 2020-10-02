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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'
Plug 'jeetsukumaran/vim-buffergator', {'branch': 'release'}
" Plug 'unblevable/quick-scope', {'branch': 'release'}
Plug 'voldikss/vim-floaterm', {'branch': 'release'}
" Plug 'liuchengxu/vim-which-key'
Plug 'terryma/vim-expand-region'
Plug 'mhinz/vim-startify'
Plug 'matze/vim-move' "move selection wit alt
Plug 'itchyny/lightline.vim'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-repeat'
" Plug 'justinmk/vim-sneak'
" Plug 'easymotion/vim-easymotion'
Plug 'michaeljsmith/vim-indent-object'
Plug 'voldikss/vim-translator'
Plug 'wellle/targets.vim'
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
set nobackup
set noshowmode
set undodir=~/.vim/undodir
set undofile
set scrolloff=3
set shiftwidth=4
set expandtab
set splitbelow
set splitright
set nowrap
set updatetime=50
set shortmess+=c
set textwidth=80
set t_Co=256
set cmdheight=1

let g:python_highlight_all = 0
let g:lightline = { 'colorscheme': 'jellybeans' }
set statusline^=%{coc#status()}

colorscheme gruvbox
set background=dark
let mapleader=','

let g:fzf_layout = {'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

vmap ∆ s:MoveKey('j')

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

noremap <space> :

"quick macros
nnoremap Q @q
vnoremap Q :norm @q<cr>

"quick empty line
nnoremap <silent><S-CR> :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>
nnoremap <silent><CR> :<C-u>call append(line("."),   repeat([""], v:count1))<CR>

nnoremap <C-p> :GFiles<CR>
nnoremap <C-P> :Files ~<CR>
nnoremap <C-f> :Rg<CR>
nnoremap <C-t> :FloatermToggle<CR><Esc>
nnoremap <F6> :FloatermToggle<CR><BS><Up><CR> 
" vmap K <Plug>(expand_region_expand)
" vmap J <Plug>(expand_region_shrink)


"consistent capital letter yanking
nnoremap Y y$

"get out from terminal
" tnoremap <Esc> <C-\><C-n>

tnoremap <C-t> <C-\><C-n>:FloatermToggle<CR>

nmap <leader>e :CocCommand explorer<CR>

"translator
let g:translator_target_lang="pl"
nmap <silent><leader>t yiw:Translate engines=google<CR>
vmap <silent><leader>t :Translate engines=google<CR>

inoremap <silent><expr> <c-space> coc#refresh()
