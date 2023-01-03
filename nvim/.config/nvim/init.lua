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

vim.g.nord_borders = true
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
require("nord").set()

-- require("highlights")
