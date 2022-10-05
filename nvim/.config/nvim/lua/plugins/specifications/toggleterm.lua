local Specification = require("plugins.util.specification")

local spec = Specification
  .for_plugin("akinsho/toggleterm.nvim")
  .with({
    config = function()
      require("toggleterm").setup({
        --This option sets the mapping in multiple modes, including insert,
        --and I like gt better than the suggested <C-\>
        -- open_mapping = "gt",
        shade_terminals = false,
        direction = "horizontal",
        float_opts = {
          border = "single",
        },
      })

      vim.keymap.set("n", "gt", ":ToggleTerm<CR>")
    end
  })
  .spec()

return spec
