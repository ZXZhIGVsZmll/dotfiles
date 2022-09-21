require('which-key').setup{
  layout = {
    height = { min = 2, max = 4 },
    align = 'center',
  },
}
local wk = require('which-key')

wk.register({
  ['<Tab>'] = 'Next buffer',
  ['<S-Tab>'] = 'Previous buffer',
  n = 'Open file tree',

  f = {
    name = "Telescope", -- optional group name
    b = 'List buffers',
    d = 'Show diagnostics',
    f = 'Find file',
    r = 'Open recent file',
  },
}, { prefix = "<Leader>" })
