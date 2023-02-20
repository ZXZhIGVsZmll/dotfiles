return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'


  use 'tpope/vim-commentary'

  use 'tpope/vim-surround'

  use 'tpope/vim-sleuth'

  use 'editorconfig/editorconfig-vim'

  use 'farmergreg/vim-lastplace'

  use 'sbdchd/neoformat'

  use 'nvim-treesitter/nvim-treesitter-context'


  use { 'neovim/nvim-lspconfig',
    config = function()
      require('user.plugins.lspconfig')
    end,
  }

  -- use { 'williamboman/mason.nvim',
  --   config = function()
  --     require('user.plugins.mason')
  --   end,
  -- }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      require('user.plugins.cmp')
    end,
  }

  use {
    'L3MON4D3/LuaSnip',
    config = function()
      require('user.plugins.luasnip')
    end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('user.plugins.treesitter')
    end,
  }

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1', -- It is not YET suggested to use master branch
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('user.plugins.telescope')
    end,
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('user.plugins.nvim-tree')
    end,
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('user.plugins.nvim-autopairs')
    end,
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('user.plugins.indent-blankline')
    end,
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('user.plugins.lualine')
    end,
  }

  use {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('user.plugins.dashboard-nvim')
    end,
  }

  use {
    'karb94/neoscroll.nvim',
    config = function()
      require('user.plugins.neoscroll')
    end,
  }

  use {
    'folke/which-key.nvim',
    config = function()
      require('user.plugins.which-key')
    end,
  }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      require('user.plugins.null-ls')
    end,
    requires = {
      'nvim-lua/plenary.nvim',
    },
  }
  -- Themes
  use 'joshdick/onedark.vim'

  use 'morhetz/gruvbox'

  use {
    'scysta/pink-panic.nvim',
    requires = {
      'rktjmp/lush.nvim',
    }
  }

  use {
    'catppuccin/nvim',
    as = 'catppuccin',
  }

  use {
    'rose-pine/neovim',
    as = 'rose-pine',
  }
end)
