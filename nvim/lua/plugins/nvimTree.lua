-- function to toggle the tree

local view = require'nvim-tree.view'

function Toggle()
  if view.win_open() then
    require'nvim-tree'.close()
    require'bufferline.state'.set_offset(0)
  else
    require'bufferline.state'.set_offset(31, 'File Explorer')
    require'nvim-tree'.find_file(true)
  end
end

-- mapping to toggle the tree
vim.api.nvim_set_keymap('n', '<C-b>', ':lua Toggle()<CR>', { noremap = true, silent = true })

vim.g.nvim_tree_special_files = {}

vim.cmd([[
    let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "◌",
    \   'deleted': "",
    \   'ignored': "",
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }]])
