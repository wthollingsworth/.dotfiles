return {
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = function()
      local zen_mode = require("zen-mode")
      zen_mode.setup({
        kitty = {
          enabled = true,
          font = "+4",
        },
      })
    end,
  },
}
