local Specification = require("plugins.util.specification")

local spec = Specification
  .for_plugin("hrsh7th/vim-vsnip")
  .with({
    config = function()
      vim.g.vsnip_filetypes = {
        rails = { 'ruby' },
        vue = { 'javascript', 'html', 'vue', },
      }
    end
  })
  .spec()

return spec
