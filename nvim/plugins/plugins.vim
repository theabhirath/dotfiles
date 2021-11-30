call plug#begin("~/.vim/plugged")

" UI + appearance
Plug 'wojciechkepka/vim-github-dark' " GitHub dark theme
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

" Language specific
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocomplete for common languages
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Flex
Plug 'andweeb/presence.nvim'

Plug 'github/copilot.vim'

call plug#end()
