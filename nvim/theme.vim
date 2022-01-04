if (has("termguicolors"))
    set termguicolors
endif

:lua require('theme')

let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
let g:tokyonight_day_brightness = 0.01
let g:tokyonight_lualine_bold = "true"
let g:tokyonight_dark_sidebar = "false"
let g:tokyonight_transparent_sidebar = "true"

colorscheme tokyonight

" Rainbow brackets
let g:rainbow_active = 1
