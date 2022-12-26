require("options")

require("plugin.conf")
require("lsp.conf")

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    require("keymaps")
  end
})
