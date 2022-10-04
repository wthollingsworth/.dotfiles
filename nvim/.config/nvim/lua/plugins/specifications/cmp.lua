local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("hrsh7th/nvim-cmp")
              .with({
                config = [[ require('plugins.options.nvim-cmp') ]],
              })
              .spec()

return spec
