call plug#begin("~/.vim/plugged")

" UI + appearance
Plug 'cormacrelf/dark-notify' " Light to dark theme and vice versa
Plug 'mhinz/vim-startify' " Fancy start screen

" Tab bar
Plug 'romgrk/barbar.nvim'

" Editor improvements
Plug 'jiangmiao/auto-pairs' " Auto bracket closing
Plug 'luochen1990/rainbow' " Rainbow brackets 

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'lervag/vimtex' " latex

" Discord Presence
Plug 'andweeb/presence.nvim'

" GitHub Copilot integration
Plug 'github/copilot.vim'

call plug#end()
