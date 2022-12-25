return {
  "windwp/nvim-autopairs",
  dependencies = {
    "nvim-treesitter/nvim-treesitter"
  },
  config = function()
    autopairs = require("nvim-autopairs")
    autopairs.setup({})
  end
}
