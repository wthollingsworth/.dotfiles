return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      local toggleterm = require("toggleterm")
      local wk = require("which-key")

      toggleterm.setup({
        shade_terminals = false,
        winbar = {
          enabled = false
        }
      })
      wk.register(
        { ["gt"] = { "<cmd>ToggleTerm<CR>", "Open ToggleTerm" } },
        { mode = "n" }
      )
    end
  }
}
