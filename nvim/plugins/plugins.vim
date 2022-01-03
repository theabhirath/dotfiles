call plug#begin("~/.vim/plugged")

" UI + appearance
Plug 'cormacrelf/dark-notify' " Light to dark theme and vice versa
Plug 'sonph/onehalf', { 'rtp': 'vim' } " OneHalf theme
Plug 'mhinz/vim-startify' " Fancy start screen

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' " Themes for vim-airline

" Tab bar
Plug 'romgrk/barbar.nvim'

" Editor improvements
Plug 'jiangmiao/auto-pairs' " Auto bracket closing
Plug 'luochen1990/rainbow' " Rainbow brackets 

" Syntax highlighting and code completion
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocomplete for common languages
Plug 'lervag/vimtex' " latex

" Discord Presence
Plug 'andweeb/presence.nvim'

" GitHub Copilot integration
Plug 'github/copilot.vim'

call plug#end()
