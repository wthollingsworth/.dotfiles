return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      catppuccin = require("catppuccin")
      catppuccin.setup({
        flavour = "frappe",
        dim_inactive = {
          enabled = true,
        }
      })
      vim.cmd.colorscheme("catppuccin")
    end
  }
}
