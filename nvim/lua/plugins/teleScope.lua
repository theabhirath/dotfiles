-- Search algorithm
require('telescope').load_extension('fzf')
require('telescope').load_extension('ui-select')

local map = vim.api.nvim_set_keymap

-- Keyboard remaps for Telescope

map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true, silent = true})

map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = true, silent = true})

map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').oldfiles()<cr>", {noremap = true, silent = true})

map("n", "<leader>ft", "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>", {noremap = true, silent = true})

