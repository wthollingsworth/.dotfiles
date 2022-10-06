local Specification = require("plugins.util.specification")

local spec = Specification
  .new("SmiteshP/nvim-gps")
  .with({
    requires = "nvim-treesitter/nvim-treesitter",
  })
  .spec()

return spec
