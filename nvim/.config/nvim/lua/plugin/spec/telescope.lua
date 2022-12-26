return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")
      local wk = require("which-key")

      telescope.setup({})
      telescope.load_extension("fzf")
      telescope.load_extension("noice")

      wk.register(
        {
          t = {
            name = "telescope",
            b = { builtin.buffers, "Find buffer" },
            c = { builtin.command_history, "Search command history" },
            f = { builtin.find_files, "Find files" },
            g = { builtin.live_grep, "Grep files" },
            h = { builtin.help_tags, "Search help" },
            m = { builtin.marks, "Search marks" },
            r = { builtin.resume, "Resume previous session" },
            s = { builtin.search_history, "Browse search history" },
            t = { builtin.treesitter, "Search Treesitter symbols" }
          }
        },
        { mode = "n", prefix = "<leader>" }
      )
    end
  }
}
