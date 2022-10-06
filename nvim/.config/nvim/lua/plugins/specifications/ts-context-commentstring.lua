local Specification = require("plugins.util.specification")

local spec = Specification
  .new("JoosepAlviste/nvim-ts-context-commentstring")
  .with({
    requires = { "nvim-treesitter/nvim-treesitter" },
  })

return spec
