return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "kyazdani42/nvim-web-devicons"
    },
    config = function()
      lualine = require("lualine")
      lualine.setup({
        options = {
          -- use a global statusline
          globalstatus = true,
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' }
        },

        sections = {
          lualine_b = { 
            "branch",
            "diff",
            "diagnostics",
            {
              lazy_status = require("lazy.status")
              lazy_status.updates,
              cond = lazy_status.has_updates
            }
          }
        },

        inactive_winbar = {
          lualine_x = { "filename" }
        },
      })
    end
  }
}
