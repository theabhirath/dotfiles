local map = vim.api.nvim_set_keymap

-- Code actions
map('n', '<leader>ca', '<cmd>lua require("lspsaga.codeaction").code_action()<CR>', { noremap = true, silent = true })
map('v', '<leader>ca', '<cmd>lua require("lspsaga.codeaction").range_code_action()<CR>', { noremap = true, silent = true })

-- Hover doc
map('n', 'K', '<cmd>lua require("lspsaga.hover").render_hover_doc()<CR>', { noremap = true, silent = true })
map('n', '<C-f>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', { noremap = true, silent = true })
map('n', '<C-b>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', { noremap = true, silent = true })

-- line diagnostics
map('n', '<leader>cd', '<cmd>lua require("lspsaga.diagnostic").show_line_diagnostics()<CR>', { noremap = true, silent = true })
map('n', '<leader>cc', '<cmd>lua require("lspsaga.diagnostic").show_cursor_diagnostics()<CR>', { noremap = true, silent = true })

-- rename
map('n', '<leader>gr', '<cmd>lua require("lspsaga.rename").rename()<CR>', { noremap = true, silent = true })

