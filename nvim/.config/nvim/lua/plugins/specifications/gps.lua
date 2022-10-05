local Specification = require("plugins.util.specification")

local spec = Specification
  .for_plugin("SmiteshP/nvim-gps")
  .with({
    requires = "nvim-treesitter/nvim-treesitter",
  })
  .spec()

return spec
