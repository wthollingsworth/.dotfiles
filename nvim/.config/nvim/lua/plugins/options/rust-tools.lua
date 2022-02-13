-- Update this path
local extension_path = os.getenv("HOME") .. ".vscode/extensions/vadimcn.vscode-lldb-1.6.10/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.so"

local opts = {
	dap = {
		adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
	},
	server = {
		on_attach = require("lsp.on_attach"),
	},
}
require("rust-tools").setup(opts)
