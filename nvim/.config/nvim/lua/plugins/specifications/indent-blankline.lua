local Specification = require("plugins.util.specification")

local spec = Specification
  .new("lukas-reineke/indent-blankline.nvim")
  .with({
    config = function()
      -- Show virtual characters to repreesent whitespace.
      vim.opt.list = true
      vim.opt.listchars:append("space:⋅")
      vim.opt.listchars:append("eol:↴")

      require'indent_blankline'.setup {
        buftype_exclude = { "terminal", },
        filetype_exclude = { "alpha", "help", "packer", "NvimTree", },
        space_char_indent_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
        show_end_of_line = true,
      }
    end
  })

return spec
