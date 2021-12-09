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

-- This gets rid of the tildes that Neovim shows at the end of a
-- buffer.
--
-- Ideally, we'd be able to use fillchars for this and set it in
-- ftplugin/NvimTree.lua, since the plugin sets the filetype for
-- its buffers to NvimTree, but that's only working for me after
-- explicitly setting the filetype with :set ft=NvimTree.
--
--     local opt_local = vim.opt_local
--     opt_local.fillchars:append { eob = " " }
-- 
-- So instead we'll just change the color of the tildes, which has
-- the same result visually.
vim.cmd [[ highlight NvimTreeEndOfBuffer guifg=bg ]]

