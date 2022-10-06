local Specification = require("plugins.util.specification")

local spec = Specification -- autoclose and rename HTML tags
  .new("windwp/nvim-ts-autotag")
  .with({
    requires = { "nvim-treesitter/nvim-treesitter" },
  })
  .spec()

return spec
