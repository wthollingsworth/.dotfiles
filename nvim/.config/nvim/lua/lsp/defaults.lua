local M = {}

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
M.on_attach = function(client, bufnr)
	client.server_capabilities.document_formatting = false
	client.server_capabilities.document_range_formatting = false

	-- Enable completion triggered by <c-x><c-o>
	--vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
	vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { buffer = 0 })
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
	vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations", { buffer = 0 })
  -- should probably change this to something that doesn't conflict with
  -- window switching
	vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { buffer = 0 })
	vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, { buffer = 0 })
	vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, { buffer = 0 })
	vim.keymap.set("n", "<space>wr", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, { buffer = 0 })
	vim.keymap.set("n", "<space>D", "<cmd>Telescope lsp_type_definitions<cr>", { buffer = 0 })
	vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { buffer = 0 })
	vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, { buffer = 0 })
	vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", { buffer = 0 })
	vim.keymap.set("n", "<space>p", vim.lsp.buf.formatting, { buffer = 0 })

	if client.server_capabilities.documentHighlightProvider then
		vim.api.nvim_create_augroup("LspDocumentHighlight", { clear = true }) vim.api.nvim_clear_autocmds({ buffer = bufnr, group = "LspDocumentHighlight" })
		vim.api.nvim_create_autocmd("CursorHold", {
			callback = vim.lsp.buf.document_highlight,
			buffer = bufnr,
			group = "LspDocumentHighlight",
			desc = "Document Highlight",
		})
		vim.api.nvim_create_autocmd("CursorHoldI", {
			callback = vim.lsp.buf.document_highlight,
			buffer = bufnr,
			group = "LspDocumentHighlight",
			desc = "Document Highlight",
		})
		vim.api.nvim_create_autocmd("CursorMoved", {
			callback = vim.lsp.buf.clear_references,
			buffer = bufnr,
			group = "LspDocumentHighlight",
			desc = "Clear All the References",
		})
	end
end

local cmp_nvim_lsp = require("cmp_nvim_lsp")
local capabilities = vim.lsp.protocol.make_client_capabilities()
M.capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

return M
