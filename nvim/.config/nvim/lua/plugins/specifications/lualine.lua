local Specification = require("plugins.util.specification")

local spec = Specification
  .new("nvim-lualine/lualine.nvim")
  .with({
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function()
      local gps = require("nvim-gps")

      local colors = require("nord.colors")
      local nord = require("lualine.themes.nord")
      nord = vim.tbl_deep_extend("force", nord, {
        normal = {
          c = { bg = colors.nord0_gui },
        },
        inactive = {
          a = { fg = colors.nord4_gui, bg = colors.nord1_gui },
        },
      })

      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = nord,
          component_separators = "|",
          section_separators = { left = "", right = "" },
          disabled_filetypes = { "SidebarNvim", "toggleterm" },
          always_divide_middle = true,
          globalstatus = true,
        },
        sections = {
          lualine_a = {
            { "mode", separator = { left = "" } },
          },
          lualine_b = { { "branch", icon = "" }, "diff", "diagnostics" },
          lualine_c = {
            { gps.get_location, cond = gps.is_available },
          },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = {
            { "location", separator = { right = "" } },
          },
        },
        tabline = {
          lualine_a = {
            {
              -- show buffers for just the current tab
              "windows",
              mode = 2,
              -- For the ends of the whole component.
              separator = { left = "", right = "" },
              -- Disable the separator for the "sections" within the component.
              section_separators = { left = "", right = "" },
            },
          },
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {
            {
              -- show all tabs
              "tabs",
              mode = 2,
              -- For the ends of the whole component.
              separator = { left = "", right = "" },
              -- Disable the separator for the "sections" within the component.
              section_separators = { left = "", right = "" },
            },
          },
        },
      })
    end
  })

return spec
