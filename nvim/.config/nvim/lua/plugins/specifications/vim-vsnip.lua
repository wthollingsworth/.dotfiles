local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("hrsh7th/vim-vsnip")
              .with({
                config = [[ require('plugins.options.vim-vsnip') ]],
              })
              .spec()

return spec
