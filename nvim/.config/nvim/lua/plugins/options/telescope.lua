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
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>fb", builtin.buffers)
vim.keymap.set("n", "<leader>fh", builtin.help_tags)
