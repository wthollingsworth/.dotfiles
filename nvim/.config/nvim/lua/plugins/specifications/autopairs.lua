local Specification = require("plugins.util.specification")

local spec = Specification
  .new("windwp/nvim-autopairs")
  .with({
    config = function()
      local autopairs = require("nvim-autopairs")
      local cmp = require("cmp")
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

      autopairs.setup({
        -- use treesitter to check for a pair
        check_ts = true,

        -- autoindent
        map_cr = true,
      })
    end
  })
  .spec()

return spec
