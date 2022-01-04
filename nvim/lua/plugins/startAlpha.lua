local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'
dashboard.section.buttons.val = {
    dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "SPC f f" , "  Find file" , ":Telescope find_files<CR>"),
    dashboard.button( "SPC f g", "  Find inside file", ":Telescope live_grep<CR>"),
    dashboard.button( "SPC f h", "  Recently Used Files", ":Telescope oldfiles<CR>"),
    dashboard.button( "SPC c c", "  Nvim Configuration", ":cd ~/.config/nvim <BAR> :e init.vim <BAR> :NvimTreeOpen<CR>"),
    dashboard.button( "q", "  Quit NVIM" , ":q<CR>")
}
local handle = io.popen('fortune -s')
local fortune = handle:read("*a")
handle:close()
dashboard.section.footer.val = fortune
dashboard.opts.opts.noautocmd = true
vim.cmd[[autocmd User AlphaReady echo 'ready']]
alpha.setup(dashboard.opts)

