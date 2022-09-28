local plugins = {
  -- Colorscheme
  "shaunsingh/nord.nvim",
  {
    "mcchrish/zenbones.nvim",
    -- more configuration options
    requires = "rktjmp/lush.nvim",
  },

  -- Completion
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  {
    "hrsh7th/nvim-cmp",
    config = [[ require('plugins.options.nvim-cmp') ]],
  },
  "hrsh7th/cmp-vsnip",
  {
    "hrsh7th/vim-vsnip",
    config = [[ require('plugins.options.vim-vsnip') ]],
  },
  "hrsh7th/cmp-nvim-lsp-signature-help",

  -- Language server protocol (LSP)
  {
    "williamboman/mason.nvim",
    config = [[ require('plugins.options.mason') ]],
  },
  {
    "williamboman/mason-lspconfig.nvim",
    requires = "williamboman/mason.nvim",
    config = [[ require('plugins.options.mason-lspconfig') ]],
  },
  {
    "neovim/nvim-lspconfig",
    reqiures = "williamboman/mason-lspconfig.nvim",
  },

  -- Testing
  {
    "nvim-neotest/neotest",
    requires = {
      "~/Development/neotest-rspec",
    },
    config = [[ require('plugins.options.neotest') ]],
  },

  -- Hook into LSP for things like formatting
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = [[ require('plugins.options.null-ls') ]],
  },

  -- Adds pictocgrams to lsp completion menus
  "onsails/lspkind-nvim",

  -- Diagnostics list
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = [[ require('plugins.options.trouble') ]],
  },

  -- Notification system
  -- ({
    -- 	"rcarriga/nvim-notify",
    -- 	config = [[ require('plugins.options.nvim-notify') ]],
    -- })

  -- Highlight, edit, and navigate code using a fast incremental
  -- parsing library
  {
    "nvim-treesitter/nvim-treesitter",
    -- Update the language parsers when updating Treesitter
    run = ":TSUpdate",
    config = [[ require('plugins.options.treesitter') ]],
  },

  -- Treesitter plugins
  {
    "windwp/nvim-ts-autotag", -- autoclose and rename HTML tags
    requires = { "nvim-treesitter/nvim-treesitter" },
  },
  {
    "p00f/nvim-ts-rainbow", -- rainbow parentheses
    requires = { "nvim-treesitter/nvim-treesitter" },
  },
  {
    "RRethy/nvim-treesitter-endwise",
    requires = { "nvim-treesitter/nvim-treesitter" },
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    requires = { "nvim-treesitter/nvim-treesitter" },
  },

  {
    "yamatsum/nvim-nonicons",
    requires = { "kyazdani42/nvim-web-devicons" },
  },

  -- Statusline component to show context of cursor position
  {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter",
    config = [[ require('plugins.options.nvim-gps') ]],
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = [[ require('plugins.options.lualine') ]],
  },

  -- Sidebar with file/symbol/git/diagnostic info
  {
    "sidebar-nvim/sidebar.nvim",
    config = [[ require('plugins.options.sidebar') ]],
  },

  -- UI to select things (files, grep results, open buffers...)
  -- Lots of dependencies here (recommended and optional), run
  -- :checkhealth telescope to see what you might need.
  {
    "nvim-telescope/telescope.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
    },
    config = [[ require('plugins.options.telescope') ]],
  },

  -- UI replacments for vim.input and vim.select
  {
    "stevearc/dressing.nvim",
    config = [[ require('dressing').setup()]]
  },

  -- Snippet sources
  "rafamadriz/friendly-snippets",

  -- Automatic brace and keyword matching
  {
    "windwp/nvim-autopairs",
    config = [[ require('plugins.options.nvim-autopairs') ]],
  },

  -- HTML/CSS color visualization
  {
    "norcalli/nvim-colorizer.lua",
    config = [[ require('plugins.options.nvim-colorizer') ]],
  },

  -- Display information from git in signcolumn and virtual text
  {
    "lewis6991/gitsigns.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
    config = [[ require('plugins.options.gitsigns') ]],
  },

  -- Indentation guides
  {
    "lukas-reineke/indent-blankline.nvim",
    config = [[ require('plugins.options.indent-blankline') ]],
  },

  -- Easy commenting
  "tpope/vim-commentary", -- mappings
  -- for files with multiple comment types like vue
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    requires = { "nvim-treesitter/nvim-treesitter" },
  },

  -- Mappings to add/change/delete things that come in pairs
  "tpope/vim-surround",

  -- Readline editing for command mode
  "ryvnf/readline.vim",

  -- Smooth scrolling
  {
    "declancm/cinnamon.nvim",
    config = [[ require('plugins.options.cinnamon') ]],
  },

  -- Floating terminal
  {
    "akinsho/toggleterm.nvim",
    config = [[ require('plugins.options.toggleterm') ]],
  },

  -- Git commands in Vim
  "tpope/vim-fugitive",
  -- GitHub integration for vim-fugitive's :GBrowse command
  {
    "tpope/vim-rhubarb",
    requires = "tpope/vim-fugitive",
  },

  -- Rust
  {
    "simrat39/rust-tools.nvim",
    requires = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap",
    },
  },

  -- Kitty
  "fladson/vim-kitty",

  -- Ruby and Rails
  "tpope/vim-bundler",
  "tpope/vim-rails",

  -- Allow the . operator to work on plugin mappings and not just native ones
  "tpope/vim-repeat",
}

return plugins
