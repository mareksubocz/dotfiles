call plug#begin('~/.vim/plugged')

" LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim', {'do': ':MasonUpdate'}
Plug 'williamboman/mason-lspconfig.nvim'

" Autocompletion
Plug 'L3MON4D3/LuaSnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } } "documentation generation
Plug 'm-demare/hlargs.nvim' "add color to function arguments
Plug 'windwp/nvim-autopairs' "auto closing bracket
Plug 'gbprod/cutlass.nvim' "cut with m, cxds to black hole register
Plug 'folke/todo-comments.nvim' "Color TODOS, FIXMES, etc. and TodoTelescope
Plug 'mechatroner/rainbow_csv' "aligning and colorizing csv files
Plug 'nvimtools/none-ls.nvim' "formatting tools, linters etc.
Plug 'tommcdo/vim-lion' "aligning plugin with ,a
Plug 'petertriho/nvim-scrollbar' "scrollbar showing diagnostics, etc.
Plug 'kevinhwang91/nvim-hlslens' "better search
Plug 'lewis6991/gitsigns.nvim' "what changed in git

"TODO: jupyter plugin

" Plug 'folke/lsp-colors.nvim' "automatically create missing diagnostic highlight groups
Plug 'norcalli/nvim-colorizer.lua' "colors preview in code
Plug 'ggandor/lightspeed.nvim' " even better easymotion

Plug 'ellisonleao/gruvbox.nvim' "objectively the best colorscheme

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "know it all
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'tpope/vim-surround' "text objects 'surrounding'
Plug 'tpope/vim-repeat' "repetition with dot for vim-surround and more
Plug 'numToStr/Comment.nvim'
Plug 'folke/which-key.nvim' "helper when not sure of keycombo
Plug 'hoob3rt/lualine.nvim' "statusline
Plug 'arkav/lualine-lsp-progress' "showing lsp progress in lualine
Plug 'chentoast/marks.nvim' "visual marks
Plug 'michaeljsmith/vim-indent-object' "text object based on indentation (i)
Plug 'voldikss/vim-translator' "<leader>tr to translate word or selection
Plug 'wellle/targets.vim' "ci{ and cin{ and being inside brackets
" Plug 'psliwka/vim-smoothie' "smooth scrolling
Plug 'tpope/vim-sleuth' "adjust tabs to current file
Plug 'frazrepo/vim-rainbow' "colorize parenthesis with :RainbowToggle
Plug 'Vimjas/vim-python-pep8-indent' "python proper indent

"telescope and dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'debugloop/telescope-undo.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-telescope/telescope-file-browser.nvim'
call plug#end()

let mapleader=','
set number "show line number on current line"
set encoding=UTF-8
set relativenumber
set termguicolors
set ignorecase
set smartcase
set clipboard+=unnamedplus
set colorcolumn=80
set mouse=a
set cursorline
set noswapfile
set nobackup
set noshowmode
set undodir=~/.vim/undodir
set undofile
set signcolumn=auto:2
set scrolloff=3
set sidescrolloff=5
set smartindent " Do smart autoindenting when starting a new line
set cindent " indent comments as well despite smartindent on
set shiftwidth=4 " Set number of spaces per auto indentation
set expandtab " When using <Tab>, put spaces instead of a <tab> character
set tabstop=4   " Number of spaces that a <Tab> in the file counts for
set smarttab    " At <Tab> at beginning line inserts spaces set in shiftwidth
set splitbelow
set splitright
set nowrap
set mousescroll=ver:1,hor:1
set updatetime=50
set shortmess+=c
set shortmess-=S
" set textwidth=80
set formatoptions-=t
set cmdheight=1
set lazyredraw
set completeopt=menu,menuone,noselect
set jumpoptions=stack "make jumplist behave like a stack
" set guifont=monospace:h10

let g:lightspeed_no_default_keymaps = 1
let g:lion_create_maps = 1
let g:lion_map_right = "<leader>a"
let g:lion_map_left = "<leader>A"

lua << EOF

local lsp_zero = require('lsp-zero').preset({})

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<CR>', {buffer = true})
    vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<CR>', {buffer = true})
    vim.keymap.set('n', 'gt', '<cmd>Telescope lsp_type_definitions<CR>', {buffer = true})
    vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, {buffer = true})
    vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', {buffer = true})
    vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end, {buffer = true})
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, {buffer = true})
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, {buffer = true})
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, {buffer = true})
    vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end, {buffer = true})
    vim.keymap.set("n", "<F4>", function() vim.lsp.buf.code_action() end, {buffer = true})
    vim.keymap.set({'n', 'x'}, 'gq', function() vim.lsp.buf.format({async = false, timeout_ms = 10000}) end, {buffer=bufnr})
end)

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
    pyright = function()
      require('lspconfig').pyright.setup({
        settings = {
          python = {
            analysis = {
                autoImportCompletions = false,
            }
          }
        },
        root_dir = function(fname)
        return require('lspconfig/util').find_git_ancestor(fname) or vim.fn.getcwd()
        end,
      })
    end,
  },
})

lsp_zero.setup()

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.black,
        -- null_ls.builtins.diagnostics.eslint,
        -- null_ls.builtins.completion.spell,
    },
})

vim.diagnostic.config{
      virtual_text = true,
      signs = false,
      underline = true,
      update_in_insert = true,
      severity_sort = false,
    }

-- enable Treesitter for all languages
require'nvim-treesitter.configs'.setup{
    highlight = { enable = true },
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
                },
        },
        swap = {
            enable = true,
            swap_next = {
                ["<leader>>"] = "@parameter.inner",
            },
            swap_previous = {
                ["<leader><"] = "@parameter.inner",
            },
        },
    },
    indent = {
        enable = false,
    },
}

require('marks').setup{
    default_mappings = false,
    mappings = {
        set = "gm",
        delete = "dm",
    }
}
require('which-key').setup{}
require("scrollbar.handlers.search").setup({
    calm_down=true,
    nearest_only = true,
    show_in_active_only = true,
})
require("scrollbar").setup({
    show_in_active_only = true,
    handlers={
    search=true,
    gitsigns=true,
    },
})
require('Comment').setup()
require('gitsigns').setup()
require('hlargs').setup()
require("cutlass").setup({ cut_key = 'm' })
require('todo-comments').setup{signs=false}
require "colorizer".setup()
require("gruvbox").setup({
  transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")
require("telescope").setup{
    extensions = {
        file_browser = {
            -- hijack_netrw = true,
            -- display_stat = false
            preview = {
                ls_short = true,
            },
        },
    },
}
require "telescope".load_extension('fzy_native')
require "telescope".load_extension('undo')
require "telescope".load_extension('file_browser')


require('lualine').setup({
    options = {
        theme = 'gruvbox-material',
        section_separators = {'', ''},
        component_separators = {'',''}
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {{function()
            if vim.bo.modified then return '%t*' end
              return '%t'
            end,
            color = {'lualine_filename_status', gui='bold'},
        }},
        --lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_x = {
            'lsp_progress',
            'encoding',
            {
                'diagnostics',
                sources = {'nvim_diagnostic'},
                sections = {'error', 'warn', 'info', 'hint'},
                symbols = {error = 'e', warn = 'w', info = 'i', hint = 'h'},
            },
                'filetype'
            },
        lualine_y = {'progress'},
        lualine_z = {'location'},
    },
})

require('nvim-autopairs').setup{}
local cmp = require "cmp"

cmp.setup{
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    sources = {
        -- { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'luasnip'},
        { name = 'path'},
        -- { name = 'buffer', keyword_length = 5 },
    },
    completion = {
        completeopt = 'menu,menuone,noinsert',
    },
    mapping = {
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(1), {'i', 'c'}),
      ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-1), {'i', 'c'}),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
      ['<C-e>'] = cmp.mapping(cmp.mapping.close(), {'i', 'c'}),
      ['<CR>'] = cmp.mapping(cmp.mapping.confirm({ select = true }, {'i', 'c'})),
      ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item(), {'i', 'c'}),
      ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item(), {'i', 'c'}),
    },
    experimental = {
        native_menu = false,
        ghost_text = true,
    },
}


vim.api.nvim_set_hl(0, 'SignColumn', {bg = nil})

EOF

let g:doge_enable_mappings = 0
let g:doge_doc_standard_python = 'google'
nnoremap <leader>doc <Plug>(doge-generate)

" nvim bottom bar popup navigate with up and down arrows
" set wildcharm=<C-Z>
cnoremap <expr> <up> wildmenumode() ? "\<left>" : "\<up>"
cnoremap <expr> <down> wildmenumode() ? "\<right>" : "\<down>"

" let g:gruvbox_italic=1
" let g:gruvbox_invert_selection=0
" let g:gruvbox_italicize_strings=1
colorscheme gruvbox

set background=dark

nnoremap <silent><C-_> :nohl<CR>

nnoremap <silent><leader>e :Telescope file_browser<CR>
nnoremap <silent><leader>u :Telescope undo<CR>

nnoremap <silent><leader>i :w<CR>:so$MYVIMRC<CR>:PlugClean<CR>:PlugInstall<CR>

vnoremap <M-c> "+y

" using dot to repeat for every selected line
vnoremap . :norm.<CR>

" repeating a macro for every selected line
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

nnoremap <space> :
vnoremap <space> :
nnoremap <C-space> :

"quick macros
nnoremap Q @q
vnoremap Q :norm @q<cr>

"don't store { } in jump list (C-O, C-I)
nnoremap <silent> } :<C-u>execute "keepjumps norm! " . v:count1 . "}"<CR>
nnoremap <silent> { :<C-u>execute "keepjumps norm! " . v:count1 . "{"<CR>

"moving lines with alt ∆:<A-j>, Ż:<A-k>
nnoremap <silent>∆ :m .+1<CR>==
nnoremap <silent>Ż :m .-2<CR>==
vnoremap <silent>∆ :m '>+1<CR>gv=gv
vnoremap <silent>Ż :m '<-2<CR>gv=gv

" Better indenting
vnoremap < <gv
vnoremap > >gv

" tmux-like mappings
nnoremap <silent> <C-w>" :wincmd v<CR>
nnoremap <silent> <C-w>% :wincmd s<CR>

nnoremap s <Plug>Lightspeed_s
nnoremap S <Plug>Lightspeed_S

" nnoremap <silent> <leader>gd :Telescope lsp_definitions<CR>
" nnoremap <silent> <leader>gD :lua vim.lsp.buf.declarations<CR>
" nnoremap <silent> <leader>gi :Telescope lsp_implementations<CR>
" nnoremap <silent> <leader>gt :Telescope lsp_type_definitions<CR>
" nnoremap <silent> <leader>gr :Telescope lsp_references<CR>
" nnoremap <silent> <leader>rn :lua vim.lsp.buf.rename()<CR>
" nnoremap <silent> <leader>ca :Telescope lsp_code_actions<CR>
" vnoremap <silent> <leader>ca :Telescope lsp_range_code_actions<CR>
" nnoremap <silent> <leader>K :lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> <leader>k :lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>
" nnoremap <silent> <leader>lld :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
" nnoremap <silent> <leader>ldd :Telescope diagnostics bufnr=0<CR>
" nnoremap <silent> <leader>lwd :Telescope diagnostics<CR>
" nnoremap <silent> <leader>lds :Telescope lsp_document_symbols<CR>
" nnoremap <silent> <leader>lws :Telescope lsp_workspace_symbols<CR>
" nnoremap <silent> <leader>lnd :lua vim.lsp.diagnostic.goto_next()<CR>
" nnoremap <silent> <leader>lpd :lua vim.lsp.diagnostic.goto_prev()<CR>

" nnoremap <silent> <leader>do :lua require'dap'.repl.open()<CR>
" nnoremap <silent> <leader>dc :lua require'dap'.close()<CR>
" nnoremap <silent> <leader>dp :lua require'dap'.repl.pause()<CR>
" nnoremap <silent> <leader>d<space> :lua require'dap'.continue()<CR>
" nnoremap <silent> <leader>dr<space> :lua require'dap'.reverse_continue()<CR>
" nnoremap <silent> <leader>drc<space> :lua require'dap'.run_to_cursor()<CR>
" nnoremap <silent> <leader>dj :lua require'dap'.step_over()<CR>
" nnoremap <silent> <leader>dk :lua require'dap'.step_back()<CR>
" nnoremap <silent> <leader>dl :lua require'dap'.step_into()<CR>
" nnoremap <silent> <leader>dh :lua require'dap'.step_out()<CR>
" nnoremap <silent> <leader>dbb :lua require'dap'.toggle_breakpoint()<CR>
" nnoremap <silent> <leader>dbB :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
" nnoremap <silent> <leader>dbc :lua require'dap'.clear_breakpoints()<CR>
" nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
" nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>

" highligh yanked content
au TextYankPost * silent! lua vim.highlight.on_yank {timeout=500}

"translator
let g:translator_target_lang="pl"
nmap <silent><leader>Tr viw:Translate<CR>
nmap <silent><leader>TR viw:Translate --target_lang=us<CR>
xmap <silent><leader>Tr :Translate<CR>
xmap <silent><leader>TR :Translate --target_lang=us<CR>

" disable automatic comments in new line after comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" fun! TrimWhitespace()
"     let l:save = winsaveview()
"     keeppatterns %s/\s\+$//e
"     call winrestview(l:save)
" endfun
"
" augroup trim_whitespace
"     autocmd!
"     autocmd BufWritePre * :call TrimWhitespace()
" augroup END

" do different files list depending on whether in git repo or not
" if isdirectory(".git")
"     noremap <C-p> :Telescope git_files<CR>
" else
noremap <C-p> :Telescope find_files<CR>
" endif

nnoremap <silent><C-g> :Telescope current_buffer_fuzzy_find<CR>
nnoremap <silent><C-f> :Telescope live_grep<CR>
nnoremap <silent><leader>t :Telescope<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
hi SignColumn guibg=NONE

" TODO: things to assign keyboard shortcuts to:
" -TodoTelescope
" -lightspeed
" -dap keybinds
