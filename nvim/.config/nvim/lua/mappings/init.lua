vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap

-- Pressing escape is a workout for your pinky and this is faster.
keymap.set('i', 'jk', '<esc>')
keymap.set('t', 'jk', '<C-\\><C-n>')

-- Remap for dealing with word wrap
keymap.set(
  'n', 'k', "v:count == 0 ? 'gk' : 'k'",
  { expr = true, silent = true }
)
keymap.set(
  'n', 'j', "v:count == 0 ? 'gj' : 'j'",
  { expr = true, silent = true, }
)

-- Use Ctrl+Shift+hjkl for buffer resizing
keymap.set('n', '<A-h>', ':vertical resize -5<CR>')
keymap.set('n', '<A-j>', ':resize +5<CR>')
keymap.set('n', '<A-k>', ':resize -5<CR>')
keymap.set('n', '<A-l>', ':vertical resize +5<CR>')

-- Move between windows with hjkl
-- Note the \\ sof that Lua gets a leteral \ to send to Neovim
keymap.set('i', '<C-h>', '<C-\\><C-N><C-w>h')
keymap.set('i', '<C-j>', '<C-\\><C-N><C-w>j')
keymap.set('i', '<C-k>', '<C-\\><C-N><C-w>k')
keymap.set('i', '<C-l>', '<C-\\><C-N><C-w>l')
keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-l>', '<C-w>l')
