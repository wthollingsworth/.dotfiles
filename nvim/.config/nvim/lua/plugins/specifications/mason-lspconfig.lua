local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("williamboman/mason-lspconfig.nvim")
              .with({
                requires = "williamboman/mason.nvim",
                config = [[ require('plugins.options.mason-lspconfig') ]],
              })
              .spec()

return spec
