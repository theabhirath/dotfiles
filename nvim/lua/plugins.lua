return require('packer').startup(function() 
    -- Packer 
    use 'wbthomason/packer.nvim'

    -- Telescope: file search and finder
    use {
        'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim',}
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    -- Nvim-Tree: file tree
    use {
        'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons',},
        config = function() require'nvim-tree'.setup {} end
    }

    -- Lualine: status line for neovim
    use {
        'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    
    -- Tokyo Night Theme
    use 'folke/tokyonight.nvim'

    -- Terminal inside neovim
    use {
    's1n7ax/nvim-terminal',
    config = function()
        vim.o.hidden = true
        require('nvim-terminal').setup()
    end,
    }

    -- Git integration 
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

end)

