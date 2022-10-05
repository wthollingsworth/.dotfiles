local Specification = require("plugins.util.specification")

local spec = Specification
  .for_plugin("declancm/cinnamon.nvim")
  .with({
    config = function()
      require("cinnamon").setup({
        extra_keymaps = true,
        extended_keymaps = true,
      })
    end
  })
  .spec()

return spec
