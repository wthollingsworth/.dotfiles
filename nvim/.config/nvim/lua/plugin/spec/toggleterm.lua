return {
  {
    "akinsho/toggleterm.nvim",
    tag = "2.3.0",
    keys = { "gt" },
    cmd = "ToggleTerm",
    config = function()
      local toggleterm = require("toggleterm")
      local wk = require("which-key")

      toggleterm.setup({
        shade_terminals = false,
        winbar = {
          enabled = false,
        },
      })
      wk.register({ ["gt"] = { "<cmd>ToggleTerm<CR>", "Open ToggleTerm" } }, { mode = "n" })
    end,
  },
}
