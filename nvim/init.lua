vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

require('general')
require('pluginList')
require('load-all')(os.getenv('HOME') .. '/.config/nvim/lua/plugins')
require('theme')
