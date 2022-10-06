local Specification = require("plugins.util.specification")

-- GitHub integration for vim-fugitive's :GBrowse command
local spec = Specification
  .new("tpope/vim-rhubarb")
  .with({
    requires = "tpope/vim-fugitive",
  })

return spec
