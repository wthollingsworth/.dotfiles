local autopairs = require("plugin.spec.treesitter.autopairs")
local autotag = require("plugin.spec.treesitter.autotag")
local context_commentstring = require("plugin.spec.treesitter.context-commentstring")
local endwise = require("plugin.spec.treesitter.endwise")
local refactor = require("plugin.spec.treesitter.refactor")

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local treesitter = require("nvim-treesitter.configs")
      treesitter.setup({
        ensure_installed = { "lua" },
        auto_install = true,

        -- built-in modules
        highlight = {
          enable = true
        },

        -- plugin modules
        autotag = {
          enable = true
        },
        context_commentstring = {
          enable = true
        },
        endwise = {
          enable = true
        },
        refactor = {
          -- highlight definition and usages of the symbole under the
          -- cursor
          highlight_definitions = {
            enable = true,
            clear_on_cursor_move = true
          }
        }
      })
    end
  },
  autopairs,
  autotag,
  context_commentstring,
  endwise,
  refactor
}
