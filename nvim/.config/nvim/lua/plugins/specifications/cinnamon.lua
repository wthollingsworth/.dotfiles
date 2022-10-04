local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("declancm/cinnamon.nvim")
              .with({
                config = [[ require('plugins.options.cinnamon') ]],
              })
              .spec()

return spec
