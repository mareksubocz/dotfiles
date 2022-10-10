call plug#begin('~/.vim/plugged')

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

" Plug 'github/copilot.vim'

" ------ CMP dependencies ------ "
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-cmdline'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

" ------ COQ dependencies ------ "
" Plug 'ms-jpq/coq_nvim'
" Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
" Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

"documentation
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'danymat/neogen'

" lspsaga for improved ui?!"
Plug 'ray-x/lsp_signature.nvim' "argument hint while writing in function ()"
" Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
Plug 'simrat39/symbols-outline.nvim' "tree view of symbols"
Plug 'm-demare/hlargs.nvim' "add color to function arguments"
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'windwp/nvim-autopairs' "auto closing bracket
" Plug 'cohama/lexima.vim'
" Plug 'abecodes/tabout.nvim'
Plug 'gbprod/cutlass.nvim' "cut with m, cxds to black hole register"
Plug 'mfussenegger/nvim-dap' "debugger
Plug 'rcarriga/nvim-dap-ui'
Plug 'mfussenegger/nvim-dap-python'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'nvim-telescope/telescope-dap.nvim'
" Plug 'vimpostor/vim-tpipeline'

Plug 'rcarriga/nvim-notify'
Plug 'sbdchd/neoformat' "all languages formatter
Plug 'folke/todo-comments.nvim'
Plug 'vim-scripts/indentpython.vim' "proper python indenting"
Plug 'Matsui54/OxfDictionary.nvim' "Oxford Dictionary

" Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'untitled-ai/jupyter_ascending.vim'
" Plug 'christoomey/vim-tmux-navigator'
Plug 'AndrewRadev/splitjoin.vim' "gS and gJ to spit and join lines
" Plug 'gruvbox-community/gruvbox' "objectively the best colorscheme
Plug 'folke/lsp-colors.nvim'
Plug 'norcalli/nvim-colorizer.lua' "colors preview in code
Plug 'ggandor/lightspeed.nvim' " even better easymotion?

" ---------- Colorschemes ---------
Plug 'rktjmp/lush.nvim'
Plug 'ellisonleao/gruvbox.nvim' "objectively the best colorscheme
" Plug 'npxbr/gruvbox.nvim'
" Plug 'morhetz/gruvbox'
Plug 'luisiacc/gruvbox-baby'
Plug 'rebelot/kanagawa.nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
" ---------------------------------
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "know it all
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
" Plug 'RRethy/nvim-treesitter-textsubjects'
Plug 'tpope/vim-surround' "text objects 'surrounding'
Plug 'tpope/vim-repeat' "repetition with dot for vim-surround and more
Plug 'numToStr/Comment.nvim'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'} "minigames!
Plug 'turbio/bracey.vim' "live html, css, js editing
" Plug 'sheerun/vim-polyglot' "syntax highlighting
Plug 'romainl/vim-cool' "disable highlight after search
Plug 'mbbill/undotree' "long visual undo history
Plug 'folke/which-key.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'arkav/lualine-lsp-progress'
Plug 'chentoast/marks.nvim' "visual marks
Plug 'michaeljsmith/vim-indent-object' "text object based on indentation (i)
Plug 'voldikss/vim-translator' "<leader>tr to translate word or selection
Plug 'wellle/targets.vim' "ci{ and cin{ and being inside brackets
Plug 'tweekmonster/startuptime.vim'
" Plug 'glepnir/dashboard-nvim' "nice startup screen
Plug 'junegunn/vim-easy-align' "aligning text with ,a
Plug 'psliwka/vim-smoothie' "smooth scrolling
Plug 'tpope/vim-sleuth' "adjust tabs to current file
Plug 'preservim/vimux' "send commands to tmux window
Plug 'tpope/vim-fugitive'
Plug 'frazrepo/vim-rainbow'
" let g:rainbow_active = 1

"telescope and dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
call plug#end()

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
set scrolloff=3
set sidescrolloff=5
set smartindent " Do smart autoindenting when starting a new line
set shiftwidth=4 " Set number of spaces per auto indentation
set expandtab " When using <Tab>, put spaces instead of a <tab> character
set tabstop=4   " Number of spaces that a <Tab> in the file counts for
set smarttab    " At <Tab> at beginning line inserts spaces set in shiftwidth
set splitbelow
set splitright
set nowrap
" set signcolumn=yes
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

"COQ keymaps"
" inoremap <silent><expr> <Esc>   pumvisible() ? "\<C-e><Esc>" : "\<Esc>"
" inoremap <silent><expr> <C-c>   pumvisible() ? "\<C-e><C-c>" : "\<C-c>"
" inoremap <silent><expr> <BS>    pumvisible() ? "\<C-e><BS>"  : "\<BS>"
" inoremap <silent><expr> <CR>    pumvisible() ? (complete_info().selected == -1 ? "\<C-e><CR>" : "\<C-y>") : "\<CR>"


lua << EOF
-- add to every setup? That's what thePrimeagen does
local function on_attach()
end

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
    textsubjects = {
        enable = true,
        keymaps = {
            ['.'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
        },
    },
    indent = {
        enable = false,
    },
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = {
      prefix = '●',
    },
  }
)
vim.fn.sign_define("DiagnosticSignError", {text = "e", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarning", {text = "w", texthl = "DiagnosticSignWarning"})
vim.fn.sign_define("DiagnosticSignInformation", {text = "i", texthl = "DiagnosticSignInformation"})
vim.fn.sign_define("DiagnosticSignHint", {text = "h", texthl = "DiagnosticSignHint"})

require('marks').setup{
    default_mappings = false,
    mappings = {
        set = "gm",
        delete = "dm",
    }
}
require('which-key').setup{}
require('Comment').setup()
require('hlargs').setup()
require("cutlass").setup({ cut_key = 'm' })
require('todo-comments').setup{}
require('neogen').setup({enabled=True})
require('symbols-outline').setup() --auto_preview = false
require('nvim-tree').setup()
-- require "sniprun".setup({
--     display = {"NvimNotify"},
-- })
require "lsp_signature".setup()
require "colorizer".setup()
require "telescope".load_extension('fzy_native')
require "telescope".load_extension('dap')
require "dap-python".setup("/Users/mareksubocz/.pyenv/shims/python")
require("nvim-dap-virtual-text").setup{}
require("dapui").setup()
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/local/opt/llvm/bin/lldb-vscode', -- adjust as needed
  name = "lldb"
}
dap.configurations.cpp = {
  {
    name = "Launch",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html

    runInTerminal = false,

    -- 💀
    -- If you use `runInTerminal = true` and resize the terminal window,
    -- lldb-vscode will receive a `SIGWINCH` signal which can cause problems
    -- To avoid that uncomment the following option
    -- See https://github.com/mfussenegger/nvim-dap/issues/236#issuecomment-1066306073
    postRunCommands = {'process handle -p true -s false -n false SIGWINCH'}
  },
}
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='❌', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})
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

-- local lsp = require "lspconfig"
require('nvim-autopairs').setup{}
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require "cmp"
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))
local lspkind = require "lspkind"
lspkind.init()

cmp.setup{
    snippet = {
        expand = function(args)
        require("luasnip").lsp_expand(args.body)
    end,
    },
    sources = {
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'path'},
        { name = 'luasnip'},
        { name = 'buffer', keyword_length = 5 },
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
    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[api]",
                path = "[path]",
                luasnip = "[snip]",
            },
        },
    },
}

cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer', keyword_length=5},
    },
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    sources = {
        { name = 'path'},
        { name = 'cmdline', keyword_length=5},
    },
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require("mason").setup()
require("mason-lspconfig").setup()
require("lspconfig").pylsp.setup{}
--
-- local lsp_installer = require "nvim-lsp-installer"
--
-- local function on_attach(client, bufnr)
--   -- Set up buffer-local keymaps (vim.api.nvim_buf_set_keymap()), etc.
-- end
--
-- local enhance_server_opts = {
--   -- Provide settings that should only apply to the "eslintls" server
--   ["pyright"] = function(opts)
--     opts.settings = {
--         python = {
--             -- venvPath = "/Users/mareksubocz/.pyenv/shims/python",
--             pythonPath = "niup",
--         },
--         pyright = {
--             disableLanguageServices = true,
--         },
--     }
--   end,
-- }
--
-- lsp_installer.on_server_ready(function(server)
--   -- Specify the default options which we'll use to setup all servers
--   local opts = {
--     on_attach = on_attach,
--     capabilities = capabilities,
--   }
--
--   if enhance_server_opts[server.name] then
--     -- Enhance the default opts with the server-specific ones
--     enhance_server_opts[server.name](opts)
--   end
--
--   server:setup(opts)
-- end)

-- local capabilities = vim.lsp.protocol.make_client_capabilities()

-- lsp.pyright.setup{--coq.lsp_ensure_capabilities{
--     capabilities=capabilities,
--
--     settings = {
--       python = {
--         analysis = {
--           diagnosticMode = "openFilesOnly",
--           autoImportCompletions = false,
--         },
--       }
--     }
-- }
-- lsp.clangd.setup{--coq.lsp_ensure_capabilities()
--     capabilities = capabilities,
-- }
-- lsp.vimls.setup{--coq.lsp_ensure_capabilities()
--     capabilities = capabilities,
--     }
EOF

let g:doge_enable_mappings = 0
let g:doge_doc_standard_python = 'google'

let g:CoolTotalMatches = 1

" nvim bottom bar popup navigate with up and down arrows
" set wildcharm=<C-Z>
cnoremap <expr> <up> wildmenumode() ? "\<left>" : "\<up>"
cnoremap <expr> <down> wildmenumode() ? "\<right>" : "\<down>"

set pumblend=10 "transparency of pum (dropdown)"
" let g:gruvbox_transparent_bg=1
let g:gruvbox_italic=1
let g:gruvbox_invert_selection=0
" let g:gruvbox_italicize_strings=1
colorscheme gruvbox
" colorscheme kanagawa
" colorscheme gruvbox-baby

set background=dark
let mapleader=','

" Make firenvim display big font size without resizing window
" function! s:IsFirenvimActive(event) abort
"   if !exists('*nvim_get_chan_info')
"     return 0
"   endif
"   let l:ui = nvim_get_chan_info(a:event.chan)
"   return has_key(l:ui, 'client') && has_key(l:ui.client, 'name') &&
"       \ l:ui.client.name =~? 'Firenvim'
" endfunction

" function! SetLinesForFirefox(timer)
"     set guifont=monospace:h20
" endfunction

" function! OnUIEnter(event) abort
"   if s:IsFirenvimActive(a:event)
"     set laststatus=0
"     call timer_start(100, function("SetLinesForFirefox"))
"   endif
" endfunction

" autocmd UIEnter * call OnUIEnter(deepcopy(v:event))

" if exists('g:started_by_firenvim')
"   " set guifont=monospace:h20
"   set laststatus=0
" else
"   set laststatus=2
" endif

" let g:firenvim_config = {
"     \ 'globalSettings': {
"         \ 'alt': 'all',
"     \  },
"     \ 'localSettings': {
"         \ '.*': {
"             \ 'cmdline': 'firenvim',
"             \ 'priority': 0,
"             \ 'takeover': 'never',
"         \ },
"     \ }
" \ }
" \ 'selector': 'textarea',
" \ 'content': 'text',
" let fc = g:firenvim_config['localSettings']
" let fc['https?://github.com.*'] = { 'takeover': 'always', 'priority': 1 }
" let fc['https?://localhost.*'] = { 'takeover': 'always', 'priority': 1 }

nnoremap <silent><leader>E :SymbolsOutline<CR>
nnoremap <silent><leader>e :NvimTreeToggle<CR>

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

let g:jupyter_ascending_default_mappings = 'false'
nmap <leader>x <Plug>JupyterExecute
nmap <leader>X <Plug>JupyterExecuteAll

nnoremap <silent><C-n> :VimuxRunLastCommand<CR>
" nnoremap <silent><C-m> :VimuxInterruptRunner<CR>
let g:VimuxUseNearest = 0 "make vimus use new pane first time it runs
" nnoremap <C-n> :VimuxRunCommand ""<Left>

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


nnoremap <silent> <leader>gd :Telescope lsp_definitions<CR>
nnoremap <silent> <leader>gD :lua vim.lsp.buf.declarations<CR>
nnoremap <silent> <leader>gi :Telescope lsp_implementations<CR>
nnoremap <silent> <leader>gt :Telescope lsp_type_definitions<CR>
nnoremap <silent> <leader>gr :Telescope lsp_references<CR>
nnoremap <silent> <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <leader>ca :Telescope lsp_code_actions<CR>
vnoremap <silent> <leader>ca :Telescope lsp_range_code_actions<CR>
nnoremap <silent> <leader>K :lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>k :lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <leader>lld :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent> <leader>ldd :Telescope diagnostics bufnr=0<CR>
nnoremap <silent> <leader>lwd :Telescope diagnostics<CR>
nnoremap <silent> <leader>lds :Telescope lsp_document_symbols<CR>
nnoremap <silent> <leader>lws :Telescope lsp_workspace_symbols<CR>
nnoremap <silent> <leader>lnd :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <leader>lpd :lua vim.lsp.diagnostic.goto_prev()<CR>

nnoremap <silent> <leader>do :lua require'dap'.repl.open()<CR>
nnoremap <silent> <leader>dc :lua require'dap'.close()<CR>
nnoremap <silent> <leader>dp :lua require'dap'.repl.pause()<CR>
nnoremap <silent> <leader>d<space> :lua require'dap'.continue()<CR>
nnoremap <silent> <leader>dr<space> :lua require'dap'.reverse_continue()<CR>
nnoremap <silent> <leader>drc<space> :lua require'dap'.run_to_cursor()<CR>
nnoremap <silent> <leader>dj :lua require'dap'.step_over()<CR>
nnoremap <silent> <leader>dk :lua require'dap'.step_back()<CR>
nnoremap <silent> <leader>dl :lua require'dap'.step_into()<CR>
nnoremap <silent> <leader>dh :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>dbb :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>dbB :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>dbc :lua require'dap'.clear_breakpoints()<CR>
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

"dictionary
nnoremap <silent><Leader>Td :silent !tmux split bash -c 'python ~/it/OxfDictionary.py <cword> \| less'<CR>
" vnoremap <silent><Leader>td :<C-U> !tmux split bash -c 'python ~/it/OxfDictionary.py <visual> \| less'<CR>
" nnoremap <Leader>td :!python ~/it/OxfDictionary.py <cword> \| less<CR>
let g:OxfDictionary#app_id='1e560c4ee29aced04e32f641ccb6ac2d'
let g:OxfDictionary#app_key='2f71a88b'
" nnoremap <Leader>td <Plug>(victionary#define_under_cursor)
" nnoremap <Leader>ts <Plug>(victionary#synonym_under_cursor)
" vnoremap <Leader>ts y:ThesaurusQueryReplace <C-r>"<CR>

nmap <silent><leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>
let g:undotree_RelativeTimestamp=0

" dashboard default searcher
let g:dashboard_default_executive = 'telescope'

" disable automatic comments in new line after comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" aligning text
xmap <leader>a <Plug>(EasyAlign)
nmap <leader>a <Plug>(EasyAlign)

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup trim_whitespace
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

" do different files list depending on whether in git repo or not
if isdirectory(".git")
    noremap <C-p> :Telescope git_files<CR>
else
    noremap <C-p> :Telescope find_files<CR>
endif

nnoremap <silent><C-g> :Telescope current_buffer_fuzzy_find<CR>
nnoremap <silent><C-f> :Telescope live_grep<CR>
nnoremap <silent><leader>t :Telescope<CR>

"tmux navigator
nnoremap <silent> <C-Left> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <C-Up> :TmuxNavigateUp<cr>
nnoremap <silent> <C-Right> :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" set scroll speed to 1
map <ScrollWheelUp> <C-y>
map <ScrollWheelDown> <C-e>
imap <ScrollWheelUp> <C-o><C-y>
imap <ScrollWheelDown> <C-o><C-e>

" nnoremap <C-Y> <C-Y><C-Y>
" nnoremap <C-E> <C-E><C-E>
