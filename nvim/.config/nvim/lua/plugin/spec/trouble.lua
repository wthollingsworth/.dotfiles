return {
  {
    "folke/trouble.nvim",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
    },
    config = function()
      local trouble = require("trouble")
      trouble.setup({})
    end,
  },
}
