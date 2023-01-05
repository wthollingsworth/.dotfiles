return {
  {
    "folke/neodev.nvim",
    tag = "stable",
    ft = "lua",
    config = function()
      local neodev = require("neodev")
      neodev.setup({})
    end,
  },
}
