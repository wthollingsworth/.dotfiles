local defaults = require("lsp.defaults")
local lspconfig = require("lspconfig")

vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

-- set defaults for all langauge servers
local lsp_defaults = lspconfig.util.default_config
lsp_defaults.capabilities = defaults.capabilities
lsp_defaults.on_attach = defaults.on_attach

-- a list of servers to setup
local servers = require("mason-lspconfig").get_installed_servers()

for _, server in ipairs(servers) do
	-- load any overrides if they can be found
	-- this is useful for:
	-- - plugins that manage the lsp configuration themselves
	--   (e.g., rust-tools.nvim)
	-- - setting more options than the defaults
	--   (e.g., so sumneko_lua knows about the `vim` namespace)
	local configuration = "lsp.overrides." .. server
	local present, _ = pcall(require, configuration)

	-- otherwise, just use the default options for the server
	if not present then
		lspconfig[server].setup({})
	end
end
