local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

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

-- C/C++ language server
require'lspconfig'.clangd.setup{}

-- vim language server
require'lspconfig'.vimls.setup{}

-- haskell language server
require'lspconfig'.hls.setup{}

-- julia language server
require'lspconfig'.julials.setup{}

