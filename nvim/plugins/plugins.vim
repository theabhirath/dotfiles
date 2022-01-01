call plug#begin("~/.vim/plugged")

" UI + appearance
Plug 'cormacrelf/dark-notify' " Light to dark theme and vice versa
Plug 'sonph/onehalf', { 'rtp': 'vim' } " OneHalf theme
Plug 'vim-airline/vim-airline' " Status line
Plug 'vim-airline/vim-airline-themes' " Themes for vim-airline
Plug 'mhinz/vim-startify' " Fancy start screen
Plug 'scrooloose/nerdtree' " File explorer
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' " Fuzzy finder
Plug 'ryanoasis/vim-devicons' " File icons for nerdtree
Plug 'jiangmiao/auto-pairs' " Auto bracket closing
Plug 'luochen1990/rainbow' " Rainbow brackets 

" Functionality
Plug 'tpope/vim-fugitive' " Git integration

" Search bar
Plug 'MunifTanjim/nui.nvim'
Plug 'VonHeikemen/searchbox.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocomplete for common languages
Plug 'lervag/vimtex' " latex

" Discord Presence
Plug 'andweeb/presence.nvim'

" GitHub Copilot integration
Plug 'github/copilot.vim'

call plug#end()
