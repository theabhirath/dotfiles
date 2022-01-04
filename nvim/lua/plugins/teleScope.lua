-- Search algorithm
require('telescope').load_extension('fzf')

-- Keyboard remaps for Telescope

vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').oldfiles()<cr>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<leader>ft", "<cmd>lua require('telescope.builtin').find_tag()<cr>", {noremap = true, silent = true})

