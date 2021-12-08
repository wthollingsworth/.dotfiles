vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = require('astronauta.keymap')

-- Pressing escape is a workout for your pinky and this is faster.
keymap.inoremap { 'jk', '<esc>' }
keymap.tnoremap { 'jk', '<C-\\><C-n>' }

-- Remap for dealing with word wrap
keymap.nnoremap {
  'k', "v:count == 0 ? 'gk' : 'k'",
  expr = true,
  silent = true
}
keymap.nnoremap {
  'j', "v:count == 0 ? 'gj' : 'j'",
  expr = true,
  silent = true,
}

-- Use Ctrl+Shift+hjkl for buffer resizing
keymap.nnoremap { '<A-h>', ':vertical resize -5<CR>' }
keymap.nnoremap { '<A-j>', ':resize +5<CR>' }
keymap.nnoremap { '<A-k>', ':resize -5<CR>' }
keymap.nnoremap { '<A-l>', ':vertical resize +5<CR>' }

-- Move between windows with hjkl
-- Note the \\ sof that Lua gets a leteral \ to send to Neovim
keymap.inoremap { '<C-h>', '<C-\\><C-N><C-w>h' }
keymap.inoremap { '<C-j>', '<C-\\><C-N><C-w>j' }
keymap.inoremap { '<C-k>', '<C-\\><C-N><C-w>k' }
keymap.inoremap { '<C-l>', '<C-\\><C-N><C-w>l' }
keymap.nnoremap { '<C-h>', '<C-w>h' }
keymap.nnoremap { '<C-j>', '<C-w>j' }
keymap.nnoremap { '<C-k>', '<C-w>k' }
keymap.nnoremap { '<C-l>', '<C-w>l' }
