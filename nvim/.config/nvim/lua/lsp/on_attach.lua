-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
return function(client, bufnr)
	client.resolved_capabilities.document_formatting = false
	client.resolved_capabilities.document_range_formatting = false

	-- Enable completion triggered by <c-x><c-o>
	--vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
	vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { buffer = 0 })
	vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, { buffer = 0 })
	vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, { buffer = 0 })
	vim.keymap.set("n", "<space>wr", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, { buffer = 0 })
	vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, { buffer = 0 })
	vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { buffer = 0 })
	vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, { buffer = 0 })
	vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = 0 })
	vim.keymap.set("n", "<space>p", vim.lsp.buf.formatting, { buffer = 0 })

	if client.resolved_capabilities.document_highlight then
		vim.cmd([[
    augroup document_highlight
    autocmd! * <buffer>
    autocmd CursorHold <buffer> lua
    \ vim.lsp.buf.document_highlight()
    autocmd CursorMoved <buffer> lua
    \ vim.lsp.buf.clear_references()
    augroup END
    ]])
	end
end
