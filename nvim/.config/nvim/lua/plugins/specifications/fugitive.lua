local Specification = require("plugins.util.specification")

local spec = Specification
  .new("tpope/vim-fugitive")
  .dependents({
    "tpope/vim-rhubarb",
  })

return spec
