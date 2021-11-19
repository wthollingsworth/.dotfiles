local modules = {
	'options',
	'mappings',
	'plugins',
    'lsp'
}

for i = 1, #modules, 1 do
	pcall(require, modules[i])
end

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

-- Y yank until the end of line  (note: this is now a default on master)
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })

--Map blankline
vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_char_highlight = 'LineNr'
vim.g.indent_blankline_show_trailing_blankline_indent = false

function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
    return ...
end

vim.cmd [[autocmd VimEnter * silent! :cd %:p:h]]
