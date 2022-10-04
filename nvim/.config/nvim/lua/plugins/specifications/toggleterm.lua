local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("akinsho/toggleterm.nvim")
              .with({
                config = [[ require('plugins.options.toggleterm') ]],
              })
              .spec()

return spec
