return {
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      local indent_blankline = require("indent_blankline")
      local frappe = require("catppuccin.palettes").get_palette("frappe")
      local highlight = vim.api.nvim_set_hl

      vim.opt.list = true
      vim.opt.listchars:append "space:⋅"
      vim.opt.listchars:append "eol:↴"

      -- I used https://www.colorhexa.com/color-blend to blend different colors
      -- in Catppuccin Frappe with the primary background color of Catppuccin
      -- Frappe (you can't really add tranparency in Vim because we aren't
      -- layering highlights).  This will make the indent highlights less
      -- obtrusive white the indent lines themselves pop.
      highlight(0, "IndentBlanklineIndent1", { bg = "#8C5B65", fg = "#8C5B65", nocombine = true })
      highlight(0, "IndentBlanklineIndent2", { bg = "#906a5e", fg = "#906a5e", nocombine=true })
      highlight(0, "IndentBlanklineIndent3", { bg = "#8B7E6B", fg = "#8B7E6B", nocombine=true })
      highlight(0, "IndentBlanklineIndent4", { bg = "#6B7268", fg = "#6B7268", nocombine=true })
      highlight(0, "IndentBlanklineIndent5", { bg = "#5A7B91", fg = "#5A7B91", nocombine=true })
      highlight(0, "IndentBlanklineIndent6", { bg = "#5E6F9A", fg = "#5E6F9A", nocombine=true })
      highlight(0, "IndentBlanklineIndent7", { bg = "#75779C", fg = "#75779C", nocombine=true })
      highlight(0, "IndentBlanklineChar1", { bg = "#8C5B65", fg = frappe.red, nocombine = true })
      highlight(0, "IndentBlanklineChar2", { bg = "#906a5e", fg = frappe.peach, nocombine=true })
      highlight(0, "IndentBlanklineChar3", { bg = "#8B7E6B", fg = frappe.yellow, nocombine=true })
      highlight(0, "IndentBlanklineChar4", { bg = "#6B7268", fg = frappe.green, nocombine=true })
      highlight(0, "IndentBlanklineChar5", { bg = "#5A7B91", fg = frappe.sapphire, nocombine=true })
      highlight(0, "IndentBlanklineChar6", { bg = "#5E6F9A", fg = frappe.blue, nocombine=true })
      highlight(0, "IndentBlanklineChar7", { bg = "#75779C", fg = frappe.lavender, nocombine=true })

      indent_blankline.setup({
        use_treesitter = true,

        --highlight the current context (it doesn't seem to be possible to
        --change the color of individual context lines when using more than
        --one indent char color)
        show_current_context = true,
        show_current_context_start = true,

        -- the character used to draw indent lines
        char = "▏",

        -- how to highlight the indent lines
        char_highlight_list = {
          "IndentBlanklineChar1",
          "IndentBlanklineChar2",
          "IndentBlanklineChar3",
          "IndentBlanklineChar4",
          "IndentBlanklineChar5",
          "IndentBlanklineChar6",
          "IndentBlanklineChar7"
        },

        -- how to highlight the spaces between indent lines
        space_char_highlight_list = {
          "IndentBlanklineIndent1",
          "IndentBlanklineIndent2",
          "IndentBlanklineIndent3",
          "IndentBlanklineIndent4",
          "IndentBlanklineIndent5",
          "IndentBlanklineIndent6",
          "IndentBlanklineIndent7"
        },
        -- do not show indent guide for current level when line is blank
        show_trailing_blankline_indent = false
      })
    end
  }
}
