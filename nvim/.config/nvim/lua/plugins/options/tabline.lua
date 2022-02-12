require("tabline").setup({
	enable = true,
	options = {
		show_tabs_always = false,
		show_bufnr = true,
		show_filename_only = true, -- show basename only, not path
		modified_italic = false,
	},
})

-- Store tab pages and globals in session.
vim.opt.sessionoptions:append({
	tabpages = true,
	globals = true,
})
