local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("nvim-telescope/telescope.nvim")
              .with({
                requires = {
                  { "nvim-lua/plenary.nvim" },
                  { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
                },
                config = [[ require('plugins.options.telescope') ]],
              })
              .spec()

return spec
