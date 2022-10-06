local Specification = require("plugins.util.specification")

local spec = Specification
  .new("folke/trouble.nvim")
  .with({
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup({
        -- use diagnostic signs from lsp client (i.e., neovim)
        use_diagnostic_signs = true,
      })
    end
  })
  .spec()

return spec
