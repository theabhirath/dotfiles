local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    underline = true,
    signs = true,
  }
)
vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float(0, {scope="line"})]]
vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]

-- Lua language server
require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized butunique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- Python language server
require'lspconfig'.pyright.setup{}

-- Java language server
require'lspconfig'.jdtls.setup{}

-- C/C++ language server
require'lspconfig'.clangd.setup{}

-- vim language server
require'lspconfig'.vimls.setup{}

-- haskell language server
require'lspconfig'.hls.setup{}

-- julia language server
require'lspconfig'.julials.setup{}

