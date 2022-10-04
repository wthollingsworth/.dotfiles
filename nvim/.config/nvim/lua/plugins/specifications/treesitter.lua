local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("nvim-treesitter/nvim-treesitter")
              .with({
                -- Update the language parsers when updating Treesitter
                run = ":TSUpdate",
                config = [[ require('plugins.options.treesitter') ]],
              })
              .spec()

return spec
