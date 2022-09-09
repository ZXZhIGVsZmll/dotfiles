" ==============================
" Set
set number
set mouse=a
set bg=dark
set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" set hidden
set signcolumn=yes:1
set list
set listchars=tab:→\ ,trail:·,precedes:«,extends:»
set scrolloff=8
set sidescrolloff=8
" set completeopt=menu,menuone,noselect
set completeopt-=preview
" ==============================

" ==============================
" Plugins (vim-plug)
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'windwp/nvim-autopairs'
" Plug 'sheerun/vim-polyglot'
" Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-commentary'
call plug#end()
" ==============================

" ==============================
" Keymaps
" LuaSnip
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>
snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
" ==============================
"
" ==============================
" Plugins Vimscript
source ~/.config/nvim/plugins/gruvbox.vim
" source ~/.config/nvim/plugins/catppucin.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/indentline.vim

" source ~/.config/nvim/plugins/youcompleteme.vim
" ==============================

" ==============================
" Plugins Lua script
:lua require('plugins')
" :lua require('treesitter')
" :lua require('nvim-lspconfig')
" :lua require('cmp-nvim-lsp')
" :lua require('luasnip')
" :lua require('autopairs')
