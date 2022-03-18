require("options")
require("mappings")
require("plugins")

-- use symbols int he sign column to show information from lsp
-- diagnostics
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.g.nord_italic = false
vim.cmd([[ colorscheme nord ]])

-- Get nice lines between splits.  Set this here to override the colorschem.
vim.cmd([[ highlight WinSeparator guibg=None ]])
