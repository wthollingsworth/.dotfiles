return {
  {
    "SmiteshP/nvim-navic",
    dependencies = "neovim/nvim-lspconfig",
    config = function()
      local navic = require("nvim-navic")

      navic.setup({
        highlight = true,
        depth_limit = 5,
        depth_limit_indicator = "...",
        safe_output = true,
      })

      -- attach navic to the buffer when the language server is able to
      -- share document symbols
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client.server_capabilities.documentSymbolProvider then
            navic.attach(client, bufnr)
          end
        end,
      })
    end,
  },
}
