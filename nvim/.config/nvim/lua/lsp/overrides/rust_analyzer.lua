local defaults = require("lsp.defaults")
local rust_tools = require("rust-tools")

rust_tools.setup({
	server = {
		capabilities = defaults.capabilities,
		on_attach = defaults.on_attach,
	},
})
