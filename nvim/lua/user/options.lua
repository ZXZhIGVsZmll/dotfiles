vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.title = true
vim.opt.termguicolors = true
vim.opt.ignorecase = true
vim.opt.wrap = false
vim.opt.breakindent = true -- maintain indent when wrapping indented lines
vim.opt.list = true
vim.opt.listchars = { tab = '→ ', lead = '·', trail = '·', precedes = '«', extends = '»' }
vim.opt.fillchars:append({ eob = ' ' }) -- remove the ~ from end of buffer
vim.opt.mouse = 'a'
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.clipboard = 'unnamedplus'
-- vim.opt.confirm = true -- ask for confirmation instead of erroring
-- vim.opt.undofile = true -- persistent undo
-- vim.opt.backup = true -- automatically save a backup file
-- vim.opt.backupdir:remove('.') -- keep backups out of the current directory
-- vim.opt.shortmess:append({ I = true }) -- disable the splash screen
-- vim.opt.wildmode = 'longest:full,full' -- complete the longest common match, and allow tabbing the results to fully complete them
vim.opt.signcolumn = 'yes:1'
-- vim.opt.showmode = false
vim.opt.completeopt= { 'menu', 'menuone', 'noselect' } -- Suggested by nvim-cmp
-- vim.opt.hlsearch = false
