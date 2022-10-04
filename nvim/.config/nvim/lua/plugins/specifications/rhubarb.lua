local Specification = require("plugins.util.specification")

-- GitHub integration for vim-fugitive's :GBrowse command
local spec = Specification
              .for_plugin("tpope/vim-rhubarb")
              .with({
                requires = "tpope/vim-fugitive",
              })
              .spec()

return spec
