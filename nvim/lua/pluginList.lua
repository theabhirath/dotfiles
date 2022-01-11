return require('packer').startup(function(use)

    -- Packer
    use { 'wbthomason/packer.nvim' }

    -- TreeSitter: Syntax highlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Telescope: file search and finder
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    use { 'nvim-telescope/telescope-ui-select.nvim' }

    -- Nvim-Tree: file tree
    use {
        'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require'nvim-tree'.setup {
            auto_close = true,
            update_cwd = true,
            view = {
                auto_resize = true,
            }
        } end
    }

    -- Lualine: status line for neovim
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

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

    -- Load all lua files
    use { 'mrjones2014/load-all.nvim', requires = 'nvim-lua/plenary.nvim' }

    -- Fancy start page
    use { 'goolord/alpha-nvim', config = function () require('plugins.startAlpha') end }

    -- LSP config
    use { 'neovim/nvim-lspconfig'}
    use { 'arkav/lualine-lsp-progress' } -- progress of loading language server

    -- Auto-completion
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/nvim-cmp' }

    -- Snippets
    use { 'L3MON4D3/LuaSnip' }
    use { 'saadparwaiz1/cmp_luasnip' }

    -- Discord presence
    use { 'andweeb/presence.nvim' }

    -- Tab bar
    use { 'akinsho/bufferline.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }

    -- Light to dark theme and vice versa
    use { 'cormacrelf/dark-notify' }

    -- Searchbox
    use { 'VonHeikemen/searchbox.nvim', requires = { 'MunifTanjim/nui.nvim' } }

    -- Rust support
    use { 'simrat39/rust-tools.nvim' }

    -- Debugging
    use { 'mfussenegger/nvim-dap' }
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

    -- AutoPairs
    use { 'windwp/nvim-autopairs' }
end)

