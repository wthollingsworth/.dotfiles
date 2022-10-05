local Specification = require("plugins.util.specification")

local spec = Specification
  .for_plugin("mcchrish/zenbones.nvim")
  .with({
    -- more configuration options
    requires = "rktjmp/lush.nvim",
  })
  .spec()

return spec
