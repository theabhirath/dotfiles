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
    use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' }}

    -- Lualine: status line for neovim
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

    -- Tokyo Night Theme
    use { 'folke/tokyonight.nvim' }

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
    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip'}

    -- Tab bar
    use { 'akinsho/bufferline.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }

    -- AutoPairs
    use { 'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup{} end }

    -- Copilot
    use { 'github/copilot.vim' }

    -- LSP addons
    use { 'folke/trouble.nvim', config = function() require("trouble").setup{} end }
    use { 'tami5/lspsaga.nvim' }

    -- Pair replacements
    use { 'tpope/vim-surround' }

    -- Comment toggles
    use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }

    -- Scrollbar
    use { 'dstein64/nvim-scrollview' }

    use { 'gelguy/wilder.nvim', requires = { 'romgrk/fzy-lua-native' } }
end)

