require('general')
require('pluginList')
require('load-all')(os.getenv('HOME') .. '/.config/nvim/lua/plugins')
require('theme')
