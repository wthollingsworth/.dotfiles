local Specification = require("plugins.util.specification")

local spec = Specification
  .for_plugin("lewis6991/gitsigns.nvim")
  .with({
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })
  .spec()

return spec
