if (has("termguicolors"))
    set termguicolors
endif

let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
let g:tokyonight_day_brightness = 0.01
let g:tokyonight_lualine_bold = "true"

colorscheme tokyonight

:lua require('theme')

" Rainbow brackets
let g:rainbow_active = 1
