-- True color support
vim.o.termguicolors = true
vim.o.t_Co = 256

-- Tokyo Night theme
vim.g.tokyonight_italic_functions = 1
vim.g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer", "NvimTree"}
vim.g.tokyonight_lualine_bold = true
vim.g.tokyonight_transparent = true
vim.g.tokyonight_transparent_sidebar = true

vim.cmd('colorscheme tokyonight')
