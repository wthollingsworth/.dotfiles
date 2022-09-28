local defaults = require("lsp.defaults")
local null_ls = require("null-ls")

local code_actions = null_ls.builtins.code_actions
local completion = null_ls.builtins.completion
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
-- local hover        = null_ls.builtins.hover

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local lsp_formatting = function(bufnr)
  -- this will change to vim.lsp.buf.format in neovim 0.8
	vim.lsp.buf.formatting_sync({
		filter = function(client)
			return client.name == "null-ls"
		end,
		bufnr = bufnr,
		timeout_ms = 2000,
	})
end

null_ls.setup({
	sources = {
		code_actions.gitsigns,
		code_actions.proselint.with({
			filetypes = { "markdown" },
		}), -- pip install proselint
		completion.spell.with({
			filetypes = { "markdown" },
		}),
		completion.vsnip,
		--diagnostics.codespell, -- pip install codespell
		diagnostics.erb_lint, -- gem install erb_lint
		-- diagnostics.proselint.with({
		-- 	filetypes = { "markdown" },
		-- }), -- pip install proselint
		diagnostics.rubocop, -- gem install rubocop
		--formatting.codespell, -- pip install codespell
		formatting.erb_lint, -- gem install erb_lint
		formatting.rubocop, -- gem install rubocop
		formatting.stylua, -- cargo install stylua
		formatting.rustfmt,
		-- hover.dictionary,
	},

	on_attach = function(client, bufnr)
		defaults.on_attach(client, bufnr)
		-- if client.supports_method("textDocument/formatting") then
		-- 	vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		-- 	vim.api.nvim_create_autocmd("BufWritePre", {
		-- 		group = augroup,
		-- 		buffer = bufnr,
		-- 		callback = function()
		-- 			lsp_formatting(bufnr)
		-- 		end,
		-- 	})
		-- end
	end,
})
