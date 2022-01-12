-- send the rspec commands to a tmux pane so we can see the output
-- without leaving neovim
vim.g.rspec_command = [[ call Send_to_Tmux("rspec {spec}\n") ]]

-- set the keymaps for rspec using builtin mapper but register them
-- with which-key so they show up there
local keymap = vim.keymap
local mappings = { r = { name = "vim-rspec" } }
local opts = { prefex = "<leader>" }

-- Run the current spec file with Rspec.
keymap.set("", "<leader>rc", ":call RunCurrentSpecFile()<CR>", { remap = true })
mappings.r.c = { nil, "Run Current Spec File" }

-- Run just the nearest spec.
keymap.set("", "<leader>rn", ":call RunNearestSpec()<CR>", { remap = true })
mappings.r.c = { nil, "Run Nearest Spec" }

-- Rerun the last spec.
keymap.set("", "<leader>rl", ":call RunLastSpec()<CR>", { remap = true })
mappings.r.l = { nil, "Run Last Spec" }

-- Run all specs.
keymap.set("", "<leader>ra", ":call RunAllSpecs()<CR>", { remap = true })
mappings.r.a = { nil, "Run Current Spec File" }

-- Tell which-key about the mappings.
local wk = require("which-key")
wk.register(mappings, opts)
