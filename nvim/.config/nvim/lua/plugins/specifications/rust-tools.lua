local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("simrat39/rust-tools.nvim")
              .with({
                requires = {
                  "neovim/nvim-lspconfig",
                  "nvim-lua/plenary.nvim",
                },
              })
              .spec()

return spec
