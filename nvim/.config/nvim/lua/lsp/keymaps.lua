local telescope = require("telescope.builtin")
local wk = require("which-key")

-- diagnostics
wk.register(
  {
    ["<leader>e"] = { function() telescope.diagnostic({ bufnr = 0}) end, "Show diagnostics for current buffer" },
    ["[d"] = { vim.diagnostic.goto_prev, "Jump to previous diagnostic" },
    ["]d"] = { vim.diagnostic.goto_next, "Jump to next diagnostic" },
    ["<leader>q"] = { vim.diagnostic.setloclist, "Add buffer diagnostics to the location list" }
  },
  { mode = "n" }
)
-- Only use these keymaps after the language server attaches to the current
-- buffer.  Using built-in keymapping because which-key does not allow you to
-- deregister keymaps at this time.
local keymap = vim.keymap
vim.api.nvim_create_autocmd( "LspAttach", {
  callback = function(args)
    local bufopts = { noremap = true, silent = true, buffer = args.buf }
    keymap.set("n", "gD", vim.lsp.buf.declaration, vim.tbl_extend("error", bufopts, { desc = "Go to declaration" }))
    keymap.set("n", "gd", telescope.lsp_definitions, vim.tbl_extend("error",  bufopts, { desc = "Go to definition" }))
    keymap.set("n", "gi", telescope.lsp_implementations, vim.tbl_extend("error",  bufopts, { desc = "Go to implementation" }))
    keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, vim.tbl_extend("error",  bufopts, { desc = "Add workspace folder" }))
    keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, vim.tbl_extend("error",  bufopts, { desc = "Remove workspace folder" }))
    keymap.set("n", "<leader>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, vim.tbl_extend("error",  bufopts, { desc = "List workspace folder" }))
    keymap.set("n", "<leader>ws", telescope.lsp_workspace_symbols, vim.tbl_extend("error",  bufopts, { desc = "Show symbols in the current workspace" }))
    keymap.set("n", "<leader>ds", telescope.lsp_document_symbols, vim.tbl_extend("error",  bufopts, { desc = "Show symbols in the current buffer" }))
    keymap.set("n", "<leader>D", telescope.lsp_type_definitions, vim.tbl_extend("error",  bufopts, { desc = "Go to type definition" }))
    keymap.set("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("error",  bufopts, { desc = "Rename symbol" }))
    keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("error",  bufopts, { desc = "Show code actions" }))
    keymap.set("n", "<leader>ci", telescope.lsp_incoming_calls, vim.tbl_extend("error",  bufopts, { desc = "Show incoming calls" }))
    keymap.set("n", "<leader>co", telescope.lsp_outgoing_calls, vim.tbl_extend("error",  bufopts, { desc = "Show outgoing calls" }))
    keymap.set("n", "gr", telescope.lsp_references, vim.tbl_extend("error",  bufopts, { desc = "Find references" }))
    keymap.set("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, vim.tbl_extend("error",  bufopts, { desc = "Run formatter" }))
  end
})

vim.api.nvim_create_autocmd( "LspDetach", {
  callback = function(args)
    local bufopts = { buffer = args.buf }
    keymap.del("n", "gD", bufopts)
    keymap.del("n", "gd", bufopts)
    keymap.del("n", "gi", bufopts)
    keymap.del("n", "<leader>wa", bufopts)
    keymap.del("n", "<leader>wr", bufopts)
    keymap.del("n", "<leader>wl", bufopts)
    keymap.del("n", "<leader>ws", bufopts)
    keymap.del("n", "<leader>ds", bufopts)
    keymap.del("n", "<leader>D", bufopts)
    keymap.del("n", "<leader>rn", bufopts)
    keymap.del("n", "<leader>ca", bufopts)
    keymap.del("n", "<leader>ci", bufopts)
    keymap.del("n", "<leader>co", bufopts)
    keymap.del("n", "gr", bufopts)
    keymap.del("n", "<leader>f", bufopts)
  end
})
