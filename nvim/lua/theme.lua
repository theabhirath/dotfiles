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

-- Switch from light to dark mode and vice versa in sync with the OS
local dn = require('dark_notify')

dn.run({
        onchange = function(mode)
        if mode == 'dark' then
            vim.o.background = "dark"
        elseif mode == 'light' then
            vim.o.background = "light"
        end
    end,
})

dn.set_mode("dark") -- Draw the blinds for now
dn.toggle() -- Swap to whatever it isn't currently
dn.update() -- Match the system
dn.stop() -- Stop reacting to changes
dn.run() -- Start reacting again, with previous settings

