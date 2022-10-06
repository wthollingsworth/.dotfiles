local Specification = require("plugins.util.specification")

local spec = Specification
  .new("stevearc/dressing.nvim")
  .with({
    config = [[ require('dressing').setup()]]
  })
  .spec()

return spec
