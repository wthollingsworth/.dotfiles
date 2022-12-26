return {
  "nvim-treesitter/nvim-treesitter-context",
  dependencies = {
    "nvim-treesitter/nvim-treesitter"
  },
  config = function()
    context = require("treesitter-context")
    context.setup({})
  end
}
