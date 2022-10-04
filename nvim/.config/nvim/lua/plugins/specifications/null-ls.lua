local Specification = require("plugins.util.specification")

local spec = Specification
              .for_plugin("jose-elias-alvarez/null-ls.nvim")
              .with({
                config = [[ require('plugins.options.null-ls') ]],
              })
              .spec()

return spec
