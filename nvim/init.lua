-- Load general settings for neovim
require('general')

-- Load plugins
require('pluginList')

-- Load plugin configurations
require('load-all')(os.getenv('HOME') .. '/.config/nvim/lua/plugins')

-- Load theme
require('theme')
