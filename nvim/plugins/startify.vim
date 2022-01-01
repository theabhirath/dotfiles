let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:startify_bookmarks = [
            \ { 'c': '~/.config/nvim' },
            \ { 'z': '~/.zshrc' },
            \ {'p': '~/Code/'},
	    \ {'t': '~/.config/nvim/theme.vim'},
        \ {'d': '~/dotfiles/'},]

let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ { 'type': 'files',     'header': ['   Recently Used']                        },
         \ ]
