vim.cmd('filetype plugin indent on')

vim.cmd('set cursorline')

-- wrap
vim.wo.wrap = true

vim.wo.fillchars = 'eob: '

-- Python executable location
vim.g.python3_host_prog = "~/miniforge3/bin/"

local map = vim.api.nvim_set_keymap

-- Mapping leader to SPACE
map('n', '<SPACE>', '', { noremap = true, silent = true })
map('', '<SPACE>', '<Leader>', { silent = true })

-- Enable mouse use
vim.o.mouse = 'a'
vim.o.guicursor = true

-- Tab is 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true

-- Set title of terminal window to that of the file
vim.go.title = true

-- Wrap lines
vim.o.wrap = true -- wrap long lines
vim.o.linebreak = true -- don't break words while wrapping lines

-- Show line number
vim.o.number = true

-- Don't show mode (lualine does it)
vim.cmd('set noshowmode')

-- update time
vim.cmd('set updatetime=500')


