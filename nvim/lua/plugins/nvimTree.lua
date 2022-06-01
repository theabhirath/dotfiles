vim.cmd([[autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]])

-- mapping to toggle the tree
vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

vim.g.nvim_tree_special_files = {}


require('nvim-tree').setup{
    update_cwd = true
}
