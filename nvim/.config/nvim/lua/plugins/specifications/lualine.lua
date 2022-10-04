local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("nvim-lualine/lualine.nvim")
              .with({
                requires = { "kyazdani42/nvim-web-devicons", opt = true },
                config = [[ require('plugins.options.lualine') ]],
              })
              .spec()

return spec
