vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- Pressing escape is a workout for your pinky and this is faster.
keymap.set("i", "jk", "<esc>")
keymap.set("t", "jk", "<C-\\><C-n>")

-- Remap for dealing with word wrap
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Use Ctrl+Shift+hjkl for buffer resizing
keymap.set("n", "<A-h>", ":vertical resize -5<CR>")
keymap.set("n", "<A-j>", ":resize +5<CR>")
keymap.set("n", "<A-k>", ":resize -5<CR>")
keymap.set("n", "<A-l>", ":vertical resize +5<CR>")

-- Move between windows with hjkl
-- Note the \\ sof that Lua gets a literal \ to send to Neovim
keymap.set("t", "<C-h>", "<C-\\><C-n><C-W>h")
keymap.set("t", "<C-j>", "<C-\\><C-n><C-W>j")
keymap.set("t", "<C-k>", "<C-\\><C-n><C-W>k")
keymap.set("t", "<C-l>", "<C-\\><C-n><C-W>l")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
