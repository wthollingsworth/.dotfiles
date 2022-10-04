local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("lukas-reineke/indent-blankline.nvim")
              .with({
                config = [[ require('plugins.options.indent-blankline') ]],
              })
              .spec()

return spec
