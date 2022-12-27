local wk = require("which-key")

-- Remap escape key; it's a workout for your pinky and this is faster.
wk.register({ ["jk"] = { "<esc>", "Return to Normal mode" } }, { mode = "i" })
-- Note the \\ sof that Lua gets a literal \ to send to Neovim
wk.register({ ["jk"] = { "<C-\\><C-n>", "Return to Normal mode" } }, { mode = "t" })

-- Remap for dealing with word wrap
wk.register({
  j = { "v:count == 0 ? 'gj' : 'j'", "Move down one line" },
  k = { "v:count == 0 ? 'gk' : 'k'", "Move up one line" },
}, { mode = "n", expr = true })

-- Use Ctrl+Shift+hjkl for buffer resizing
wk.register({
  { ["<A-h>"] = { ":vertical resize -5<CR>", "Reduce window width" } },
  { ["<A-j>"] = { ":resize +5<CR>", "Increase window height" } },
  { ["<A-k>"] = { ":resize -5<CR>", "Reduce window height" } },
  { ["<A-l>"] = { ":vertical resize +5<CR>", "Increase window width" } },
}, { mode = "n" })

-- Move between windows with hjkl
wk.register({
  ["<C-h>"] = { "<C-w>h", "Move to the window on the left" },
  ["<C-j>"] = { "<C-w>j", "Move to the window above" },
  ["<C-k>"] = { "<C-w>k", "Move to the window below" },
  ["<C-l>"] = { "<C-w>l", "Move to the window on the right" },
}, { mode = "n" })
-- Note the \\ sof that Lua gets a literal \ to send to Neovim
wk.register({
  ["<C-h>"] = { "<C-\\><C-n><C-w>h", "Move to the window on the left" },
  ["<C-j>"] = { "<C-\\><C-n><C-w>j", "Move to the window above" },
  ["<C-k>"] = { "<C-\\><C-n><C-w>k", "Move to the window below" },
  ["<C-l>"] = { "<C-\\><C-n><C-w>l", "Move to the window on the right" },
}, { mode = "t" })
