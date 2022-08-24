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
-- TODO: Replace this with nvim-lsp-installer so you can use
--       use `require("nvim-lsp-installer").get_installed_servers()`
--       instead of maintaining a list manually (that's shared across
--       systems).
--
--       Solargraph is still clunky, but you can work with it by setting
--       ${GEM_HOME} and ${GEM_PATH} as documented in
--       https://github.com/williamboman/nvim-lsp-installer/issues/187
--       for a `bundle install` so solargraph can find the gems in it's
--       apartment of the nvim-lsp-installer complex.
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
