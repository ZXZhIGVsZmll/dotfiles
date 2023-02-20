local home = os.getenv('HOME')
local db = require('dashboard')

db.setup{
  theme = 'doom',
  config = {
    center = {
      {
        icon = '  ',
        desc = 'New File    ',
        action = 'enew'
      },

      {
        icon = '  ',
        desc = 'Find File   ',
        action = 'Telescope find_files'
      },

      {
        icon = '  ',
        desc = 'Recent Files',
        action = 'Telescope oldfiles'
      },

      {
        icon = '  ',
        desc = 'File Browser',
        action = 'NvimTreeFindFileToggle'
      },

      {
        icon = '  ',
        desc = 'Close Neovim',
        action = 'q'
      },

    },

    footer = { ' ' },
  },

  hide = {
    statusline = true,
    tabline = true,
    winbar = true,
  },
  
  preview = {
    command = 'cat | lolcat -F 0.5',
    file_path = home .. '/.config/nvim/lua/user/plugins/dashboard-header.txt',
    file_height = 15,
    file_width = 30,
  },
}

vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = '#ff1493' })
