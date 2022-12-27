return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      local catppuccin = require("catppuccin")
      catppuccin.setup({
        flavour = "frappe",
        dim_inactive = {
          enabled = true,
        },
        integrations = {
          indent_blankline = {
            enabled = true,
            colored_indent_levels = true,
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
