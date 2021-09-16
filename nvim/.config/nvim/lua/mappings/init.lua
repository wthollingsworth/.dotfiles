local function map(mode, lhs, rhs)
	local options = { noremap = true, silent = true }
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
vim.g.mapleader = ' '

map('i', 'jk', '<esc>')
map('t', 'jk', '<C-\\><C-n>')

-- Use Alt+hjkl for buffer resizing
map('n', '<A-h>', ':vertical resize -5<cr>')
map('n', '<A-j>', ':resize +5<cr>')
map('n', '<A-k>', ':resize -5<cr>')
map('n', '<A-l>', ':vertical resize +5<cr>')

-- Treat long, wrapped lines as multiple lines when scrolling
-- map('', 'k', 'gk')
-- map('', 'j', 'gj')

-- But still allow scrolling as if one line
-- map('', 'gk', 'k')
-- map('', 'gj', 'j')

-- Move between windows with hjkl
-- Note the \\ so that Lua gets a literal \ to send to Neovim
map('i', '<C-h>', '<C-\\><C-N><C-w>h')
map('i', '<C-j>', '<C-\\><C-N><C-w>j')
map('i', '<C-j>', '<C-\\><C-N><C-w>j')
map('i', '<C-l>', '<C-\\><C-N><C-w>l')
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-l>', '<C-w>l')

-- Be consistent with C and D, which reach the end of the line
map('n', 'Y', 'y$')

-- System clipboard integration
vim.api.nvim_set_keymap('n', '<C-c>', '"+y', { silent = true })
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { silent = true })
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { silent = true })
map('i', '<C-v>', '<C-r>+')
map('c', '<C-v>', '<C-r>+')
