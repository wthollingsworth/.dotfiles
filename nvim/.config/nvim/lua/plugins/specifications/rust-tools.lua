local Specification = require("plugins.util.specification")

local spec = Specification
  .new("simrat39/rust-tools.nvim")
  .with({
    requires = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
    },
  })

return spec
