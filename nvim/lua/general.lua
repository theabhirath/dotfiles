-- highlight line with the cursor
vim.cmd([[set cursorline]])

-- don't show ~ for non-existent lines
vim.cmd([[set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾]])

-- wrap
vim.wo.wrap = true

-- Python executable location
vim.g.python3_host_prog = "~/miniforge3/bin/"

-- Mapping leader to SPACE
vim.api.nvim_set_keymap('n', '<SPACE>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<SPACE>', '<Leader>', { silent = true })

-- Enable mouse use
vim.o.mouse = 'a'
vim.o.guicursor = true

-- vertical cursor while editing
vim.cmd('set guicursor=i:ver25-iCursor')

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

