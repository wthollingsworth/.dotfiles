local Specification = require("plugins.util.specification")

local spec = Specification
  .new("williamboman/mason-lspconfig.nvim")
  .with({
    requires = "williamboman/mason.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "sumneko_lua" },
      })
    end
  })

return spec
