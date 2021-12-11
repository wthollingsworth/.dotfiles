local lsp_installer = require('nvim-lsp-installer')

-- servers and associated configuration
local desired_servers = {
  sumneko_lua = {
    settings = {
      Lua = {
        diagnostics = {
          -- Get the language server to recognize the 'vim', 'use' global
          globals = {'vim', 'use'},
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = vim.api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
          enable = false,
        },
      },
    }
  },
  solargraph = {},
  html = {},
  cssls = {},
  tsserver = {},
  jsonls = {},
  vuels = {},
  emmet_ls = {},
}

-- ensure servers are installed
for server_name, _ in pairs(desired_servers) do
  local ok, server = lsp_installer.get_server(server_name)
  if ok and not server:is_installed() then
      server:install()
  end
end

-- use the built-in lsp as a completion source form cmp
lsp_installer.on_server_ready(function(server)
  local opts = desired_servers[server.name]
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  local cmp_nvim_lsp = require('cmp_nvim_lsp')
  capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

  opts.capabilities = capabilities
  server:setup(opts)
end)

lsp_installer.settings({
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  }
})
