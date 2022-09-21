local home = os.getenv('HOME')
local db = require('dashboard')

db.preview_command = 'cat | lolcat -F 0.5'
db.preview_file_path = home .. '/.config/nvim/lua/user/plugins/dashboard-header.txt'

db.preview_file_height = 15
db.preview_file_width = 30

db.custom_center = {
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
}

db.custom_footer = { '' }

vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = '#ff1493' })
