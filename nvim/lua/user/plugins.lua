return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'tpope/vim-commentary'

  use {
    'catppuccin/nvim',
    as = 'catppuccin',
    config = { 'vim.g.catppuccin_flavour = "macchiato"', 'vim.cmd[[colorscheme catppuccin]]' }
  }

  use { 'neovim/nvim-lspconfig',
    config = function()
      require('user.plugins.lspconfig')
    end,
  }

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
    tag = '0.1.0', -- It is not YET suggested to use master branch
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    config = function()
      require('user.plugins.telescope')
    end,
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
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
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('user.plugins.lualine')
    end,
  }

  use {
    'glepnir/dashboard-nvim',
    config = function()
      require('user.plugins.dashboard')
    end,
  }
end)
