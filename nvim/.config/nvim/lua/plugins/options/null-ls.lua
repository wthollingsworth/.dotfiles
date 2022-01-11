local null_ls = require("null-ls")

local code_actions = null_ls.builtins.code_actions
local completion = null_ls.builtins.completion
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
-- local hover        = null_ls.builtins.hover

null_ls.setup({
	sources = {
		code_actions.gitsigns,
		code_actions.proselint, -- pip install proselint
		completion.spell,
		completion.vsnip,
		diagnostics.codespell, -- pip install codespell
		diagnostics.proselint, -- pip install proselint
		diagnostics.rubocop, -- gem install rubocop
		formatting.codespell, -- pip install codespell
		formatting.rubocop, -- gem install rubocop
		formatting.stylua, -- cargo install stylua
		-- hover.dictionary,
	},
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd([[ autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync() ]])
		end
	end,
})
