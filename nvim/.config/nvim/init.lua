require("options")
require("keybindings")

local util = require("plugin.util")
util.bootstrap_plugin_manager()
require("lazy").setup("plugin.spec")
