require("options")
require("mappings")
require("plugins")
require("lsp")

-- use symbols in the sign column to show information from lsp diagnostics
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.g.zenbones = {
	solid_line_nr = true,
	solid_float_border = true,
	darken_line_nr = 80,
	colorize_diagnostic_underline_text = true,
}
vim.cmd([[ set background=light ]])
vim.cmd([[ colorscheme zenbones ]])
-- Get nice lines between splits.  Set this here to override the colorschem.
--vim.cmd([[ highlight WinSeparator guibg=None ]])
