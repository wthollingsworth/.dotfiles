return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "kyazdani42/nvim-web-devicons"
    },
    config = function()
      local lualine = require("lualine")

      lualine.setup({
        options = {
          -- use a global statusline
          globalstatus = true,
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
          disabled_filetypes = { "toggleterm" }
        },

        sections = {
          lualine_b = {
            { "branch", icon = "" },
            "diff",
            "diagnostics",
            {
              require("lazy.status").updates,
              cond = require("lazy.status").has_updates
            }
          }
        },

        inactive_winbar = {
          lualine_x = { "filename" }
        }
      })
    end
  }
}
