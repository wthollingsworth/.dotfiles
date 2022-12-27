local lspconfig = require("plugin.spec.mason.lspconfig")
local null_ls = require("plugin.spec.mason.null-ls")

return {
  {
    "williamboman/mason.nvim",
    config = function()
      local mason = require("mason")
      mason.setup({})

      local null = require("mason-null-ls")
      null.setup({
        ensure_installed = { "stylua" },
        automatic_setup = true,
      })

      require("null-ls").setup({})
      null.setup_handlers({})

      local wk = require("which-key")
      wk.register({
        m = {
          name = "mason",
          l = { "<cmd>MasonLog<CR>", "Open Mason log file" },
          o = { "<cmd>Mason<CR>", "Open Mason" },
          u = { "<cmd>MasonUninstallAll", "Uninstall all Mason packages" },
        },
      }, { mode = "n", prefix = "<leader>" })
    end,
  },
  lspconfig,
  null_ls,
}
