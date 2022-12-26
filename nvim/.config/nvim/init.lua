require("options")

local util = require("plugin.util")
util.bootstrap_plugin_manager()
require("lazy").setup("plugin.spec", {
  install = {
    colorscheme = { "catppuccin" }
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin"
      }
    }
  }
})

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    require("keymaps")
  end
})
