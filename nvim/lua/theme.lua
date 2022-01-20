-- True color support
vim.o.termguicolors = true
vim.o.t_Co = 256

-- Tokyo Night theme
vim.cmd('autocmd ColorScheme * highlight link SearchBoxMatch Search') -- support for highlighting searchbox searches
vim.cmd('colorscheme tokyonight')

vim.g.tokyonight_italic_functions = 1
vim.g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer"}
vim.g.tokyonight_day_brightness = 0.4
vim.g.tokyonight_lualine_bold = true
