local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("windwp/nvim-autopairs")
              .with({
                config = [[ require('plugins.options.nvim-autopairs') ]],
              })
              .spec()

return spec
