local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("stevearc/dressing.nvim")
              .with({
                config = [[ require('dressing').setup()]]
              })
              .spec()

return spec
