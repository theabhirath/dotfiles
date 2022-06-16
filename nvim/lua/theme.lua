-- True color support
vim.o.termguicolors = true
vim.o.t_Co = 256

vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_transparent = true
vim.g.tokyonight_transparent_sidebar = true

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

vim.cmd[[colorscheme tokyonight]]
