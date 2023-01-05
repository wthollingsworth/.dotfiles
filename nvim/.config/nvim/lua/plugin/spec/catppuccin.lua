return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- This is a colorscheme, so we want to load eagerly.
    lazy = false,
    tag = "v0.2.8",
    config = function()
      local catppuccin = require("catppuccin")
      catppuccin.setup({
        flavour = "frappe",
        dim_inactive = {
          enabled = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
