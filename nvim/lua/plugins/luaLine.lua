-- Disable status line for NvimTree

vim.api.nvim_exec(
    [[
    au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
]],
    false
)

-- Lualine settings
require('lualine').setup {
  options = {
    theme = 'tokyonight',
    globalstatus = true
  },
  sections = {
		lualine_c = {
			'lsp_progress'
		}
	}
}
