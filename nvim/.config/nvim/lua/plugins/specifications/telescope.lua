local Specification = require("plugins.util.specification")

local spec = Specification
  .new("nvim-telescope/telescope.nvim")
  .with({
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup()

      -- use fzf as a backend
      telescope.load_extension("fzf")

      -- Check the documentation for more pickers, or use tab completion on
      -- the arguments to :Telescope.  Or just run :Telescope to search for
      -- them in Telescope.
      vim.keymap.set("n", "<leader>tf", builtin.find_files)
      vim.keymap.set("n", "<leader>tg", builtin.live_grep)
      vim.keymap.set("n", "<leader>tb", builtin.buffers)
      vim.keymap.set("n", "<leader>th", builtin.help_tags)
    end
  })
  .spec()

return spec
