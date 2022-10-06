local Specification = require("plugins.util.specification")

local spec = Specification
  .new("declancm/cinnamon.nvim")
  .with({
    config = function()
      require("cinnamon").setup({
        extra_keymaps = true,
        extended_keymaps = true,
      })
    end
  })

return spec
