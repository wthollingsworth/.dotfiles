local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("norcalli/nvim-colorizer.lua")
              .with({
                config = [[ require('plugins.options.nvim-colorizer') ]],
              })
              .spec()

return spec
