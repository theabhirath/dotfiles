filetype plugin indent on
syntax enable

" Python3 location
let g:python3_host_prog="~/miniforge3/bin/"

" Space as leader key
nnoremap <SPACE> <Nop>
map <SPACE> <leader>

set mouse+=a " enable mouse support
set guicursor= " Cursor
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
