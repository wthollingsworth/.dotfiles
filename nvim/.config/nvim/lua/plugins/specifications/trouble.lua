local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("folke/trouble.nvim")
              .with({
                requires = "kyazdani42/nvim-web-devicons",
                config = [[ require('plugins.options.trouble') ]],
              })
              .spec()

return spec
