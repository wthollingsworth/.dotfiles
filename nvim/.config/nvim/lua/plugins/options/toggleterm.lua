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

vim.keymap.set("n", "gt", ":ToggleTerm<CR>")

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
	cmd = "lazygit",
	direction = "float",
	hidden = true,
})

function _lazygit_toggle()
	lazygit:toggle()
end

vim.keymap.set("n", "<leader>g", _lazygit_toggle)
