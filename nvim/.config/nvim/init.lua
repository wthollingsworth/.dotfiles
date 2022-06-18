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

vim.cmd([[ colorscheme nordbones ]])
vim.g.nordbones_solid_float_border = true
-- Get nice lines between splits.  Set this here to override the colorschem.
--vim.cmd([[ highlight WinSeparator guibg=None ]])
