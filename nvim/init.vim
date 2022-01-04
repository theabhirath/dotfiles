filetype indent on
filetype plugin on

" Python3 location
let g:python3_host_prog="~/miniforge3/bin/"

" Update packer plugins whenever plugin.lua is updated
augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end

" Packer plugins
:lua << EOF
    require('plugins')
    require('load-all')(os.getenv('HOME') .. '/.config/nvim/lua/plugins')
EOF

" Loading vimscript plugins
source ~/.config/nvim/nvim_plugins/plugins.vim

" Plugin settings
for f in split(glob('~/.config/nvim/nvim_plugins/*.vim'), '\n')
	exe 'source' f
endfor

" Theme and general vim settings
source ~/.config/nvim/theme.vim
source ~/.config/nvim/general.vim

