local lspconfig = require("lspconfig")
lspconfig.emmet_ls.setup({
	filetypes = {
		"html",
		"typescript",
		"vue",
		"css",
	},
})
