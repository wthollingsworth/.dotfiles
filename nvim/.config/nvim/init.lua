require("options")
require("keybindings")

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
