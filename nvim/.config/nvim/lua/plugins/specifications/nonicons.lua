local Specification = require("plugins.util.specification")

local spec = Specification
  .new("yamatsum/nvim-nonicons")
  .with({
    requires = { "kyazdani42/nvim-web-devicons" },
  })

return spec
