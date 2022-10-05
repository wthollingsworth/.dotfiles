local Specification = require("plugins.util.specification")

local spec = Specification
  .for_plugin("nvim-treesitter/nvim-treesitter-textobjects")
  .with({
    requires = { "nvim-treesitter/nvim-treesitter" },
  })
  .spec()

return spec
