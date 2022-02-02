require("toggleterm").setup({
	--This option sets the mapping in multiple modes, including insert,
	--and I like gt better than the suggested <C-\>
	-- open_mapping = "gt",
	shade_terminals = false,
	direction = "horizontal",
	float_opts = {
		border = "single",
	},
})

local wk = require("which-key")
wk.register({
	["gt"] = {
		":ToggleTerm<CR>",
		"Toggle terminal window",
	},
})
