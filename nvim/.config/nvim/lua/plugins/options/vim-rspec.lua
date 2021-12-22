-- send the rspec commands to a tmux pane so we can see the output
-- without leaving neovim
vim.g.rspec_command =  [[ call Send_to_Tmux("rspec {spec}\n") ]]

-- set the keymaps for rspec using astronauta but register them
-- with which-key so they show up there
local keymap = require('astronauta.keymap')
local mappings = { r = { name = 'vim-rspec' } }
local opts = { prefex = '<leader>' }

-- Run the current spec file with Rspec.
keymap.map {
  '<leader>rc',
  ':call RunCurrentSpecFile()<CR>'
}
mappings.r.c = { nil, 'Run Current Spec File' }

-- Run just the nearest spec.
keymap.map {
  '<leader>rn',
  ':call RunNearestSpec()<CR>'
}
mappings.r.c = { nil, 'Run Nearest Spec' }

-- Rerun the last spec.
keymap.map {
  '<leader>rl',
  ':call RunLastSpec()<CR>'
}
mappings.r.l = { nil, 'Run Last Spec' }

-- Run all specs.
keymap.map {
  '<leader>ra',
  ':call RunAllSpecs()<CR>'
}
mappings.r.a = { nil, 'Run Current Spec File' }

-- Tell which-key about the mappings.
local wk = require('which-key')
wk.register(mappings, opts)
