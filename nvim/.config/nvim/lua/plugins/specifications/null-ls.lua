local Specification = require("plugins.util.specification")

local spec = Specification
  .for_plugin("jose-elias-alvarez/null-ls.nvim")
  .with({
    config = function()
      local defaults = require("lsp.defaults")
      local null_ls = require("null-ls")

      local code_actions = null_ls.builtins.code_actions
      local completion = null_ls.builtins.completion
      local diagnostics = null_ls.builtins.diagnostics
      local formatting = null_ls.builtins.formatting
      -- local hover        = null_ls.builtins.hover

      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
      local lsp_formatting = function(bufnr)
        -- this will change to vim.lsp.buf.format in neovim 0.8
        vim.lsp.buf.formatting_sync({
          filter = function(client)
            return client.name == "null-ls"
          end,
          bufnr = bufnr,
          timeout_ms = 2000,
        })
      end

      null_ls.setup({
        sources = {
          code_actions.gitsigns,
          code_actions.proselint.with({
            filetypes = { "markdown" },
          }), -- pip install proselint
          completion.spell.with({
            filetypes = { "markdown" },
          }),
          completion.vsnip,
          diagnostics.erb_lint, -- gem install erb_lint
          diagnostics.rubocop, -- gem install rubocop
          formatting.erb_lint, -- gem install erb_lint
          formatting.rubocop, -- gem install rubocop
          formatting.stylua, -- cargo install stylua
          formatting.rustfmt,
        },
      })
    end
  })
  .spec()

return spec
