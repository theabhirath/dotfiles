" Update packer plugins whenever plugin.lua is updated
augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end

" Load plugins
:lua << EOF
    require('pluginList')
    require('load-all')(os.getenv('HOME') .. '/.config/nvim/lua/plugins')
EOF

" Theme and general vim settings
source ~/.config/nvim/theme.vim
source ~/.config/nvim/general.vim
