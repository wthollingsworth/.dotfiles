local Specification = require("plugins.util.specification")

local spec = Specification
  .for_plugin("yamatsum/nvim-nonicons")
  .with({
    requires = { "kyazdani42/nvim-web-devicons" },
  })
  .spec()

return spec
