-- function to toggle the tree

local view = require'nvim-tree.view'

function toggle()
  if view.win_open() then
    require'nvim-tree'.close()
    require'bufferline.state'.set_offset(0)
  else
    require'bufferline.state'.set_offset(31, 'File Explorer')
    require'nvim-tree'.find_file(true)
  end
end

-- mapping to toggle the tree
vim.api.nvim_set_keymap('n', '<C-b>', ':lua toggle()<CR>', { noremap = true, silent = true })
