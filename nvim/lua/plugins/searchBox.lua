local map = vim.api.nvim_set_keymap

map('n', '<leader>s', ':SearchBoxIncSearch<CR>', { noremap = true })
map('x', '<leader>s', ':SearchBoxIncSearch visual_mode=true<CR>', { noremap = true })

map('n', '<leader>f', ':SearchBoxMatchAll clear_matches=true<CR>', { noremap = true })
map('x', '<leader>f', ':SearchBoxMatchAll visual_mode=true clear_matches=false<CR>', { noremap = true })

map('n', '<leader>r', ':SearchBoxReplace confirm=menu<CR>', { noremap = true })
map('x', '<leader>r', ':SearchBoxReplace confirm=menu visual_mode=true<CR>', { noremap = true })
