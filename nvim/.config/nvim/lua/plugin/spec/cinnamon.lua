return {
  {
    "declancm/cinnamon.nvim",
    -- The default keymaps below
    keys = { "<C-B>", "<C-D>", "<C-F>", "<C-U>", "<PageDown>", "<PageUp>" },
    config = function()
      local cinnamon = require("cinnamon")
      cinnamon.setup({
        default_keymaps = true,

        -- scrolling can get really janky for long lines or files, so do not
        -- include keymaps like `gg` or `0`
        extra_keymaps = false,
      })
    end,
  },
}
