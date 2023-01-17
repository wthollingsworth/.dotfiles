return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- This is the primary colorscheme, so we want to load eagerly.
    lazy = false,
    tag = "v0.2.8",
    -- Make sure the primary colorscheme is loaded first
    priority = 1000,
    config = function()
      local catppuccin = require("catppuccin")
      catppuccin.setup({
        flavour = "frappe",
        dim_inactive = {
          enabled = true,
        },
        integrations = {
          navic = {
            enabled = true,
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
