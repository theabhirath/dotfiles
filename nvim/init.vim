filetype indent on
filetype plugin on

" Python3 location
let g:python3_host_prog="~/miniforge3/bin/"

" Loading plugins
source ~/.config/nvim/plugins/plugins.vim

" Update packer plugins whenever plugin.lua is updated
augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

" Packer plugins
:lua require('plugins')
:lua require('tree')

" Plugin settings
for f in split(glob('~/.config/nvim/plugins/*.vim'), '\n')
	exe 'source' f
endfor

" Theme and general vim settings
source ~/.config/nvim/theme.vim
source ~/.config/nvim/general.vim

