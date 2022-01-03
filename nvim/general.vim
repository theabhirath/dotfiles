filetype plugin indent on
syntax enable

set t_Co=256
set mouse+=a " enable mouse support
set guicursor="Cursor
set cursorline

set encoding=utf-8 " Write files in UTF-8 encoding
set fileencoding=utf-8

" Tabs == 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

set t_Co=256

set noshowmode " Airline shows current mode

set title " set title of terminal window to current filename
set wrap " wrap long lines
set linebreak " don't break words while wrapping lines

set number " show line number

" open new split panes to right and below
set splitright
set splitbelow

" Terminal settings

tnoremap <Esc> <C-\><C-n> " turn terminal to normal mode with escape

au BufEnter * if &buftype == 'terminal' | :startinsert | endif " start terminal in insert mode

" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 9
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

:lua << EOF

local dn = require('dark_notify')

dn.run({
    schemes = {      
        dark  = "onehalfdark",
        light = "onehalflight",
    },
    onchange = function(mode)
    end,
})

-- Draw the blinds for now
dn.set_mode("dark")

-- Swap to whatever it isn't currently
dn.toggle()

-- Match the system
dn.update()

-- Stop reacting to changes
dn.stop()

-- Start reacting again, with previous settings
dn.run()

EOF
