local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("williamboman/mason.nvim")
              .with({
                config = [[ require('plugins.options.mason') ]],
              })
              .spec()

return spec
