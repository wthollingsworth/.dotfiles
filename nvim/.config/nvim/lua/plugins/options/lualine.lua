local gps = require("nvim-gps")
local nordbones = require("lualine.themes.nordbones")
local palette = require("nordbones.palette")

-- make sections c and x blend in with the buffer
nordbones.normal.c.bg = palette.nord0

-- make the tabline look more like the statusline
nordbones.inactive.a = {
	fg = "#A8B1C5",
	bg = "#4C566A",
	gui = "", -- no bold
}

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = nordbones,
		component_separators = "|",
		--section_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "SidebarNvim", "toggleterm" },
		always_divide_middle = true,
		globalstatus = true,
	},
	sections = {
		lualine_a = {
			--{ "mode", separator = { left = "" } },
			"mode",
		},
		lualine_b = { { "branch", icon = "" }, "diff", "diagnostics" },
		lualine_c = {
			{ gps.get_location, cond = gps.is_available },
		},
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = {
			--{ "location", separator = { right = "" } },
			"location",
		},
	},
	tabline = {
		lualine_a = {
			{
				-- show buffers for just the current tab
				"windows",
				mode = 2,
				-- For the ends of the whole component.
				--separator = { left = "", right = "" },
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
				--separator = { left = "", right = "" },
				-- Disable the separator for the "sections" within the component.
				section_separators = { left = "", right = "" },
			},
		},
	},
})
