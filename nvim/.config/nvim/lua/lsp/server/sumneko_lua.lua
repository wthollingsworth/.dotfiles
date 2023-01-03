local lspconfig = require("lspconfig")
lspconfig.sumneko_lua.setup({
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace",
      },
    },
  },
})
