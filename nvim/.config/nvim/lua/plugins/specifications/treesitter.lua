local Specification = require("plugins.util.specification")

local spec = Specification
  .new("nvim-treesitter/nvim-treesitter")
  .dependents({
    "windwp/nvim-ts-autotag",
    "JoosepAlviste/nvim-ts-context-commentstring",
    "RRethy/nvim-treesitter-endwise",
    "nvim-treesitter/nvim-treesitter-textobjects",
  })
  .with({
    -- Update the language parsers when updating Treesitter
    run = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        -- Automatically install missing parsers when entering buffer
        auto_install = true,

        -- list of parsers to ignore installing
        --ignore_install = { "javascript" },

        highlight = {
          -- false will disable the whole extension
          enable = true,

          -- list of language that will be disabled
          --disable = { "c", "rust" },

          -- Setting this to true will run `:h syntax` and tree-sitter at
          -- the same time.  Set this to `true` if you depend on 'syntax'
          -- being enabled (like for indentation).  Using this option may
          -- slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,
        },

        -- use autotag plugin to autoclose and rename HTML tags
        autotag = {
          enable = true,
        },

        -- enable autopairs integration
        autopairs = {
          enable = true,
        },

        -- wisely add end keyword in languages like ruby and lua
        endwise = {
          enable = true,
        },

        -- edits the comment string based on cursor position for
        -- filetypes like vue
        context_commentstring = {
          enable = true,
        },

        -- turns treesitter nodes into vim text objects
        textobjects = {
          select = {
            enable = true,

            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,

            keymaps = {
              -- You can use the capture groups defined in textobjects.scm
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ab"] = "@block.outer",
              ["ib"] = "@block.inner",
              ["ac"] = "@conditional.outer",
              ["ic"] = "@conditional.inner",
              ["al"] = "@loop.outer",
              ["il"] = "@loop.inner",
              ["am"] = "@class.outer",
              ["im"] = "@class.inner",
              ["ap"] = "@parameter.outer",
              ["ip"] = "@parameter.inner",
              ["as"] = "@statement.outer",
            },
          },
          swap = {
            enable = true,
            swap_next = {
              ["<leader>a"] = "@parameter.inner",
            },
            swap_previous = {
              ["<leader>A"] = "@parameter.inner",
            },
          },
          move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
              ["]m"] = "@function.outer",
              ["]]"] = "@class.outer",
              ["]b"] = "@block.outer",
            },
            goto_next_end = {
              ["]M"] = "@function.outer",
              ["]["] = "@class.outer",
              ["]B"] = "@block.outer",
            },
            goto_previous_start = {
              ["[m"] = "@function.outer",
              ["[["] = "@class.outer",
              ["[b"] = "@block.outer",
            },
            goto_previous_end = {
              ["[M"] = "@function.outer",
              ["[]"] = "@class.outer",
              ["[B"] = "@bloc.outer",
            },
          },
        },
      })
    end
  })

return spec
