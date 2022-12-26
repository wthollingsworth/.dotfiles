local util = require("plugin.util")
util.bootstrap_plugin_manager()

local lazy = require("lazy")
lazy.setup("plugin.spec", {
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

local wk = require("which-key")
wk.register(
  {
    l = {
      name = "lazy",
      c = { lazy.check, "Check for updates and show the log" },
      h = { lazy.help, "Show help page" },
      i = { lazy.install, "Install missing plugins" },
      l = { lazy.log, "Show recent updates" },
      r = { lazy.restore, "Update all plugins to the state in the lockfile" },
      s = { lazy.sync, "Run, install, clean, and update" },
      u = { lazy.update, "Update plugins and lockfile" }
    }
  },
  { mode = "n", prefix = "<leader>" }
)
