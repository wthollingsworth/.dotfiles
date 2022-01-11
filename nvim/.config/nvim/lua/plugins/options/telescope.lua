local telescope = require('telescope')

telescope.setup {
  extensions = {
    ['ui-select'] = {
      require('telescope.themes').get_dropdown { }
    },
  },
}

telescope.load_extension('fzf')
telescope.load_extension('ui-select')

-- Check the documentation for more pickers, or use tab completion on
-- the arguments to :Telescope.  Or just run :Telescope to search for
-- them in Telescope.
local keymap = vim.keymap
local mappings = { f = { name = 'telescope' } }
local opts = { prefix = '<leader>' }

-- Fuzzy file search
keymap.set(
  'n',
  '<leader>ff',
  function()
    require('telescope.builtin').find_files()
  end
)
--mappings.f.f = { nil, 'Find File' }

-- Invoke Ripgrep from Neovim
keymap.set(
  'n',
  '<leader>fg',
  function()
    require('telescope.builtin').live_grep()
  end
)
--mappings.f.g = { nil, 'Grep Files' }

-- Like BufExplorer
keymap.set(
  'n',
  '<leader>fb',
  function()
    require('telescope.builtin').buffers()
  end
)
--mappings.f.b = { nil, 'Find Buffer' }

-- Search Neovim help pages.
keymap.set(
  'n',
  '<leader>fh',
  function()
    require('telescope.builtin').help_tags()
  end
)
--mappings.f.h = { nil, 'Find Neovim Help' }

-- Tell which-key about the mappings.
local wk = require('which-key')
--wk.register(mappings, opts)
