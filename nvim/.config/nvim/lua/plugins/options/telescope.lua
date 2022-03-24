local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})

telescope.load_extension("fzf")
telescope.load_extension("ui-select")

-- Check the documentation for more pickers, or use tab completion on
-- the arguments to :Telescope.  Or just run :Telescope to search for
-- them in Telescope.
vim.keymap.set("n", "<leader>tf", builtin.find_files)
vim.keymap.set("n", "<leader>tg", builtin.live_grep)
vim.keymap.set("n", "<leader>tb", builtin.buffers)
vim.keymap.set("n", "<leader>th", builtin.help_tags)
