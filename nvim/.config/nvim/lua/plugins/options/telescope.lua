local telescope = require("telescope")

telescope.setup({
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})

telescope.load_extension("fzf")
telescope.load_extension("ui-select")

-- Check the documentation for more pickers, or use tab completion on
-- the arguments to :Telescope.  Or just run :Telescope to search for
-- them in Telescope.
local mappings = {
  f = {
    name = "telescope",

    -- Fuzzy file search
    f = {
      function() require("telescope.builtin").find_files() end,
      "Find file",
    },

    -- Invoke Ripgrep from Neovim
    g = {
      function() require("telescope.builtin").live_grep() end,
      "Grep files",
    },

    -- Like BufExplorer
    b = {
      function() require("telescope.builtin").buffers() end,
      "Find buffer",
    },

    -- Search Neovim help pages.
    h = {
      function() require("telescope.builtin").help_tags() end,
      "Find Neovim help",
    },
  },
}
local opts = { prefix = "<leader>" }

-- Tell which-key about the mappings.
local wk = require("which-key")
wk.register(mappings, opts)
