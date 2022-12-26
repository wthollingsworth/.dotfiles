local lspconfig = require("plugin.spec.mason.lspconfig")
return {
  {
    "williamboman/mason.nvim",
    config = function()
      local mason = require("mason")
      mason.setup({})

      local wk = require("which-key")
      wk.register(
        {
          m = {
            name = "mason",
            l = { "<cmd>MasonLog<CR>", "Open Mason log file" },
            o = { "<cmd>Mason<CR>", "Open Mason" },
            u = { "<cmd>MasonUninstallAll", "Uninstall all Mason packages" }
          }
        },
        { mode = "n", prefix = "<leader>" }
      )
    end
  },
  lspconfig
}
