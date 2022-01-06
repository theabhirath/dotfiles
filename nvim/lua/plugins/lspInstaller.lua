local lsp_installer = require("nvim-lsp-installer")
    lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- Lua LSP settings
    if server.name == "sumneko_lua" then
        opts = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { 'vim' } -- prevent vim from being flagged as undefined global
              }
            }
          }
        }
    end

    server:setup(opts)

    end)
