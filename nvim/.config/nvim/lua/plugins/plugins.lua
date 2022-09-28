local plugins = function(use)
  -- Colorscheme
  use("shaunsingh/nord.nvim")
  use({
    "mcchrish/zenbones.nvim",
    -- more configuration options
    requires = "rktjmp/lush.nvim",
  })

  -- Completion
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use({
    "hrsh7th/nvim-cmp",
    config = [[ require('plugins.options.nvim-cmp') ]],
  })
  use("hrsh7th/cmp-vsnip")
  use({
    "hrsh7th/vim-vsnip",
    config = [[ require('plugins.options.vim-vsnip') ]],
  })
  use("hrsh7th/cmp-nvim-lsp-signature-help")

  -- Language server protocol (LSP)
  use({
    "williamboman/mason.nvim",
    config = [[ require('plugins.options.mason') ]],
  })
  use({
    "williamboman/mason-lspconfig.nvim",
    requires = "williamboman/mason.nvim",
    config = [[ require('plugins.options.mason-lspconfig') ]],
  })
  use({
    "neovim/nvim-lspconfig",
    reqiures = "williamboman/mason-lspconfig.nvim",
  })

  -- Testing
  use({
    "nvim-neotest/neotest",
    requires = {
      "~/Development/neotest-rspec",
    },
    config = [[ require('plugins.options.neotest') ]],
  })

  -- Hook into LSP for things like formatting
  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = [[ require('plugins.options.null-ls') ]],
  })

  -- Adds pictocgrams to lsp completion menus
  use("onsails/lspkind-nvim")

  -- Diagnostics list
  use({
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = [[ require('plugins.options.trouble') ]],
  })

  -- Notification system
  -- use({
    -- 	"rcarriga/nvim-notify",
    -- 	config = [[ require('plugins.options.nvim-notify') ]],
    -- })

    -- Highlight, edit, and navigate code using a fast incremental
    -- parsing library
    use({
      "nvim-treesitter/nvim-treesitter",
      -- Update the language parsers when updating Treesitter
      run = ":TSUpdate",
      config = [[ require('plugins.options.treesitter') ]],
    })

    -- Treesitter plugins
    use({
      "windwp/nvim-ts-autotag", -- autoclose and rename HTML tags
      requires = { "nvim-treesitter/nvim-treesitter" },
    })
    use({
      "p00f/nvim-ts-rainbow", -- rainbow parentheses
      requires = { "nvim-treesitter/nvim-treesitter" },
    })
    use({
      "RRethy/nvim-treesitter-endwise",
      requires = { "nvim-treesitter/nvim-treesitter" },
    })
    use({
      "nvim-treesitter/nvim-treesitter-textobjects",
      requires = { "nvim-treesitter/nvim-treesitter" },
    })

    use({
      "yamatsum/nvim-nonicons",
      requires = { "kyazdani42/nvim-web-devicons" },
    })

    -- Statusline component to show context of cursor position
    use({
      "SmiteshP/nvim-gps",
      requires = "nvim-treesitter/nvim-treesitter",
      config = [[ require('plugins.options.nvim-gps') ]],
    })

    -- Statusline
    use({
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons", opt = true },
      config = [[ require('plugins.options.lualine') ]],
    })

    -- Sidebar with file/symbol/git/diagnostic info
    use({
      "sidebar-nvim/sidebar.nvim",
      config = [[ require('plugins.options.sidebar') ]],
    })

    -- UI to select things (files, grep results, open buffers...)
    -- Lots of dependencies here (recommended and optional), run
    -- :checkhealth telescope to see what you might need.
    use({
      "nvim-telescope/telescope.nvim",
      requires = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
      },
      config = [[ require('plugins.options.telescope') ]],
    })

    -- UI replacments for vim.input and vim.select
    use({
      "stevearc/dressing.nvim",
      config = [[ require('dressing').setup()]]
    })

    -- Snippet sources
    use("rafamadriz/friendly-snippets")

    -- Automatic brace and keyword matching
    use({
      "windwp/nvim-autopairs",
      config = [[ require('plugins.options.nvim-autopairs') ]],
    })

    -- HTML/CSS color visualization
    use({
      "norcalli/nvim-colorizer.lua",
      config = [[ require('plugins.options.nvim-colorizer') ]],
    })

    -- Display information from git in signcolumn and virtual text
    use({
      "lewis6991/gitsigns.nvim",
      requires = {
        "nvim-lua/plenary.nvim",
      },
      config = [[ require('plugins.options.gitsigns') ]],
    })

    -- Indentation guides
    use({
      "lukas-reineke/indent-blankline.nvim",
      config = [[ require('plugins.options.indent-blankline') ]],
    })

    -- Easy commenting
    use("tpope/vim-commentary") -- mappings
    use({ -- for files with multiple comment types like vue
    "JoosepAlviste/nvim-ts-context-commentstring",
    requires = { "nvim-treesitter/nvim-treesitter" },
  })

  -- Mappings to add/change/delete things that come in pairs
  use("tpope/vim-surround")

  -- Readline editing for command mode
  use("ryvnf/readline.vim")

  -- Smooth scrolling
  use({
    "declancm/cinnamon.nvim",
    config = [[ require('plugins.options.cinnamon') ]],
  })

  -- Floating terminal
  use({
    "akinsho/toggleterm.nvim",
    config = [[ require('plugins.options.toggleterm') ]],
  })

  -- Git commands in Vim
  use("tpope/vim-fugitive")
  -- GitHub integration for vim-fugitive's :GBrowse command
  use({
    "tpope/vim-rhubarb",
    requires = "tpope/vim-fugitive",
  })

  -- Rust
  use({
    "simrat39/rust-tools.nvim",
    requires = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap",
    },
  })

  -- Kitty
  use("fladson/vim-kitty")

  -- Ruby and Rails
  use("tpope/vim-bundler")
  use("tpope/vim-rails")
end

return plugins
