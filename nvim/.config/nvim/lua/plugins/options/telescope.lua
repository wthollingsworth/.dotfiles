require('telescope').load_extension('fzf')

-- Check the documentation for more pickers, or use tab completion on
-- the arguments to :Telescope.  Or just run :Telescope to search for
-- them in Telescope.
local keymap = require('astronauta.keymap')

-- Fuzzy file search
keymap.nnoremap {
  '<leader>ff',
  function()
    require('telescope.builtin').find_files()
  end
}

-- Invoke Ripgrep from Neovim
keymap.nnoremap {
  '<leader>fg',
  function()
    require('telescope.builtin').live_grep()
  end
}

-- Like BufExplorer
keymap.nnoremap {
  '<leader>fb',
  function()
    require('telescope.builtin').buffers()
  end
}

-- Search Neovim help pages.
keymap.nnoremap {
  '<leader>fh',
  function()
    require('telescope.builtin').help_tags()
  end
}
