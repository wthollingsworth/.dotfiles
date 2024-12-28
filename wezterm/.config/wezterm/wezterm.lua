local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "nord"
config.font = wezterm.font("Operator Mono SSm Lig")

return config
