vim.o.termguicolors = true
vim.o.t_Co = 256

-- Tokyo Night theme
vim.cmd('autocmd ColorScheme * highlight link SearchBoxMatch Search')
vim.cmd('colorscheme tokyonight')

vim.g.tokyonight_italic_functions = 1
vim.g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer"}
vim.g.tokyonight_day_brightness = 0.4
vim.g.tokyonight_lualine_bold = true
vim.g.tokyonight_dark_sidebar = false
vim.g.tokyonight_transparent_sidebar = true

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

-- Draw the blinds for now
dn.set_mode("dark")

-- Swap to whatever it isn't currently
dn.toggle()

-- Match the system
dn.update()

-- Stop reacting to changes
dn.stop()

-- Start reacting again, with previous settings
dn.run()

