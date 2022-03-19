local colors = require("nord.colors")

local nord_theme = {
	normal = {
		a = { fg = colors.nord1_gui, bg = colors.nord9_gui },
		b = { fg = colors.nord5_gui, bg = colors.nord2_gui },
		c = { fg = colors.nord4_gui, bg = colors.nord0_gui },
	},

	insert = {
		a = { fg = colors.nord1_gui, bg = colors.nord4_gui },
		b = { fg = colors.nord6_gui, bg = colors.nord3_gui_bright },
	},

	visual = {
		a = { fg = colors.nord0_gui, bg = colors.nord9_gui },
		b = { fg = colors.nord4_gui, bg = colors.nord10_gui },
	},

	replace = {
		a = { fg = colors.nord0_gui, bg = colors.nord11_gui },
		b = { fg = colors.nord4_gui, bg = colors.nord10_gui },
	},

	command = {
		a = { fg = colors.nord0_gui, bg = colors.nord15_gui, gui = "bold" },
		b = { fg = colors.nord4_gui, bg = colors.nord10_gui },
	},

	inactive = {
		a = { fg = colors.nord4_gui, bg = colors.nord0_gui, gui = "bold" },
		b = { fg = colors.nord4_gui, bg = colors.nord0_gui },
		c = { fg = colors.nord4_gui, bg = colors.nord1_gui },
	},
}
require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = nord_theme,
		--component_separators = { left = "", right = "" },
		component_separators = "|",
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "NvimTree" },
		always_divide_middle = true,
		globalstatus = true,
	},
	sections = {
		lualine_a = {
			{ "mode", separator = { left = "" }, right_padding = 2 },
		},
		lualine_b = { { "branch", icon = "" }, "diff", "diagnostics" },
		lualine_c = {},
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = {
			{ "location", separator = { right = "" }, left_padding = 2 },
		},
	},
	tabline = {
		lualine_a = { "buffers" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "tabs" },
	},
})
