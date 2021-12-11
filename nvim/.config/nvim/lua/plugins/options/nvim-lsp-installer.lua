local lsp_installer = require('nvim-lsp-installer')

local desired_servers = {
  sumneko_lua = {},
  solargraph = {},
  html = {},
  cssls = {},
  tsserver = {},
  jsonls = {},
  vuels = {},
  emmet_ls = {},
}

for server_name, _ in pairs(desired_servers) do
  local ok, server = lsp_installer.get_server(server_name)
  if ok and not server:is_installed() then
      server:install()
  end
end

lsp_installer.on_server_ready(function(server)
  local opts = desired_servers[server.name]
  local capabilities = require('cmp_nvim_lsp')
      .update_capabilities(vim.lsp.protocol.make_client_capabilities())
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
