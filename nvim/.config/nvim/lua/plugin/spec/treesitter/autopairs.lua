return {
  "windwp/nvim-autopairs",
  dependencies = {
    "nvim-treesitter/nvim-treesitter"
  },
  config = function()
    local autopairs = require("nvim-autopairs")
    autopairs.setup({})
  end
}
