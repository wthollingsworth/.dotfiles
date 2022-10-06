local Specification = require("plugins.util.specification")

local spec = Specification
  .new("williamboman/mason.nvim")
  .with({
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
          }
        }
      })
    end
  })

return spec
