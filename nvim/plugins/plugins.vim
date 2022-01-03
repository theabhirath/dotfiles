call plug#begin("~/.vim/plugged")

" UI + appearance
Plug 'cormacrelf/dark-notify' " Light to dark theme and vice versa
Plug 'mhinz/vim-startify' " Fancy start screen

" Tab bar
Plug 'romgrk/barbar.nvim'

" Editor improvements
Plug 'jiangmiao/auto-pairs' " Auto bracket closing
Plug 'luochen1990/rainbow' " Rainbow brackets 

" Syntax highlighting and code completion
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Autocompletion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'lervag/vimtex' " latex

" Discord Presence
Plug 'andweeb/presence.nvim'

" GitHub Copilot integration
Plug 'github/copilot.vim'

call plug#end()
