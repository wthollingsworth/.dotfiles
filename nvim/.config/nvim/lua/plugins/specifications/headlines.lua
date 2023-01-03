local Specification = require("plugins.util.specification")

-- Colorscheme
local spec = Specification
  .new("lukas-reineke/headlines.nvim")
  .with({
    config = function()
      require("headlines").setup({
        markdown = {
          headline_highlights = {
            "Headline1",
            "Headline2",
            "Headline3",
            "Headline4",
            "Headline5",
            "Headline6",
          },
          codeblock_highlight = "CodeBlock",
          dash_highlight = "Dash",
          quote_highlight = "Quote",
        },
      })
    end
  })

return spec
