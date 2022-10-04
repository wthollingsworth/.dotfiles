local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("neovim/nvim-lspconfig")
              .with({
                reqiures = "williamboman/mason-lspconfig.nvim",
              })
              .spec()

return spec
