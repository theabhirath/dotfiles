return require('packer').startup(function() 
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim',}
    }

    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    use {
        'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons',},
        config = function() require'nvim-tree'.setup {} end
    }
end)

