require("lsp.keymaps")

-- set defaults for all language servers
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local lspconfig = require("lspconfig")
local lsp_defaults = lspconfig.util.default_config
lsp_defaults.capabilities = cmp_nvim_lsp.default_capabilities()

-- a list of servers to setup
local servers = require("mason-lspconfig").get_installed_servers()

for _, server in ipairs(servers) do
	-- load any overrides if they can be found
	-- this is useful for:
	-- - plugins that manage the lsp configuration themselves
	--   (e.g., rust-tools.nvim)
	-- - setting more options than the defaults
	--   (e.g., so sumneko_lua knows about the `vim` namespace)
	local configuration = "lsp.server." .. server
	local present, _ = pcall(require, configuration)

	-- otherwise, just use the default options for the server
	if not present then
		lspconfig[server].setup({})
	end
end
