local Specification = require("plugins.util.specification")

local spec = Specification
  .new("RRethy/nvim-treesitter-endwise")
  .with({
    requires = { "nvim-treesitter/nvim-treesitter" },
  })
  .spec()

return spec
