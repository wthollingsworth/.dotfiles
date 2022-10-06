local Specification = require("plugins.util.specification")

local spec = Specification
  .new("nvim-treesitter/nvim-treesitter-textobjects")
  .with({
    requires = { "nvim-treesitter/nvim-treesitter" },
  })

return spec
