local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("SmiteshP/nvim-gps")
              .with({
                requires = "nvim-treesitter/nvim-treesitter",
                config = [[ require('plugins.options.nvim-gps') ]],
              })
              .spec()

return spec
