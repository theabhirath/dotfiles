call plug#begin("~/.vim/plugged")

" UI + appearance
Plug 'cormacrelf/dark-notify' " Light to dark theme and vice versa

" Tab bar
Plug 'romgrk/barbar.nvim'

" Editor improvements
Plug 'jiangmiao/auto-pairs' " Auto bracket closing
Plug 'luochen1990/rainbow' " Rainbow brackets 

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Latex support
Plug 'lervag/vimtex'

" Discord Presence
Plug 'andweeb/presence.nvim'

" GitHub Copilot integration
Plug 'github/copilot.vim'

call plug#end()
