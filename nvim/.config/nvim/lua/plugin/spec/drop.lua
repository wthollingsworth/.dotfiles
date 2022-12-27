return {
  {
    "folke/drop.nvim",
    event = "VimEnter",
    dependencies = {
      "glepnir/dashboard-nvim",
    },
    config = function()
      local drop = require("drop")
      drop.setup({})
    end,
  },
}
