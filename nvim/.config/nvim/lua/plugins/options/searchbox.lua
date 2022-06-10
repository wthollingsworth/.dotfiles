vim.api.nvim_set_keymap("n", "/", ":SearchBoxIncSearch title='Search' <CR>", { noremap = true })
vim.api.nvim_set_keymap("x", "/", ":SearchBoxIncSearch title='Search' visual_mode=true<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "?", ":SearchBoxIncSearch title='Reverse search' reverse=true <CR>", { noremap = true })
vim.api.nvim_set_keymap(
	"x",
	"?",
	":SearchBoxIncSearch title='Reverse search' visual_mode=true reverse=true<CR>",
	{ noremap = true }
)
