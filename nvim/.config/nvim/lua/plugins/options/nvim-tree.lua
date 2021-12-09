-- Show indent markers for open folders.  Can't be set in setup function
-- yet, and must be set before calling setup.
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_root_folder_modifier = ':.:t'
vim.g.nvim_tree_add_trailing = 1

require'nvim-tree'.setup {
  auto_close = true, -- close nvim-tree if it is the last open window
  update_cwd = true, -- update tree root when directory changes
  diagnostics = {
    enable = true,
  },
}

local keymap = require('astronauta.keymap')
keymap.nnoremap { '<C-n>', ':NvimTreeToggle<CR>' }

local wk = require('which-key')
wk.register({ ['<C-n>'] = { nil, 'Toggle NvimTree pane' } })

--vim.cmd [[highlight NvimTreeNormal guibg=#3B4252]]
--vim.cmd [[highlight NvimTreeVertSplit guifg=#3B4252 guibg=#3B4252]]
--vim.cmd [[highlight NvimTreeStatusLine guibg=#3B4252]]
