return {
  {
    "declancm/cinnamon.nvim",
    config = function()
      local cinnamon = require("cinnamon")
      cinnamon.setup({
        default_keymaps = true,

        -- scrolling can get really janky for long lines or files, so do not
        -- include keymaps like `gg` or `0`
        extra_keymaps = false
      })
    end
  }
}
