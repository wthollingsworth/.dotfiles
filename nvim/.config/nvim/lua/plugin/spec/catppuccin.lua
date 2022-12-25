return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      catppuccin = require("catppuccin")
      catppuccin.setup({
        flavour = "frappe",
      })
      vim.cmd.colorscheme("catppuccin")
    end
  }
}
