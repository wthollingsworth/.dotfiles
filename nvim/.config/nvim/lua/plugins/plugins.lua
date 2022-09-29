local Specification = require("plugins.util.specification")
local plugins = {
  -- Colorscheme
  Specification
    .for_plugin("shaunsingh/nord.nvim")
    .spec(),

  Specification
    .for_plugin("mcchrish/zenbones.nvim")
    .with({
      -- more configuration options
      requires = "rktjmp/lush.nvim",
    })
    .spec(),

  -- Completion
  Specification
    .for_plugin("hrsh7th/cmp-nvim-lsp")
    .spec(),
  Specification
    .for_plugin("hrsh7th/cmp-buffer")
    .spec(),
  Specification
    .for_plugin("hrsh7th/cmp-path")
    .spec(),
  Specification
    .for_plugin("hrsh7th/cmp-cmdline")
    .spec(),
  Specification
    .for_plugin("hrsh7th/nvim-cmp")
    .with({
      config = [[ require('plugins.options.nvim-cmp') ]],
    })
    .spec(),
  Specification
    .for_plugin("hrsh7th/cmp-vsnip")
    .spec(),
  Specification
    .for_plugin("hrsh7th/vim-vsnip")
    .with({
      config = [[ require('plugins.options.vim-vsnip') ]],
    })
    .spec(),
  Specification
    .for_plugin("hrsh7th/cmp-nvim-lsp-signature-help")
    .spec(),

  -- Language server protocol (LSP)
  Specification
    .for_plugin("williamboman/mason.nvim")
    .with({
      config = [[ require('plugins.options.mason') ]],
    })
    .spec(),
  Specification
    .for_plugin("williamboman/mason-lspconfig.nvim")
    .with({
      requires = "williamboman/mason.nvim",
      config = [[ require('plugins.options.mason-lspconfig') ]],
    })
    .spec(),
  Specification
    .for_plugin("neovim/nvim-lspconfig")
    .with({
      reqiures = "williamboman/mason-lspconfig.nvim",
    })
    .spec(),

  -- Hook into LSP for things like formatting
  Specification
    .for_plugin("jose-elias-alvarez/null-ls.nvim")
    .with({
      config = [[ require('plugins.options.null-ls') ]],
    })
    .spec(),

  -- Adds pictocgrams to lsp completion menus
  Specification
    .for_plugin("onsails/lspkind-nvim")
    .spec(),

  -- Diagnostics list
  Specification
    .for_plugin("folke/trouble.nvim")
    .with({
      requires = "kyazdani42/nvim-web-devicons",
      config = [[ require('plugins.options.trouble') ]],
    })
    .spec(),

  -- Highlight, edit, and navigate code using a fast incremental
  -- parsing library
  Specification
    .for_plugin("nvim-treesitter/nvim-treesitter")
    .with({
      -- Update the language parsers when updating Treesitter
      run = ":TSUpdate",
      config = [[ require('plugins.options.treesitter') ]],
    })
    .spec(),

  -- Treesitter plugins
  Specification -- autoclose and rename HTML tags
    .for_plugin("windwp/nvim-ts-autotag")
    .with({
      requires = { "nvim-treesitter/nvim-treesitter" },
    })
    .spec(),
  Specification -- rainbow parentheses
    .for_plugin("p00f/nvim-ts-rainbow")
    .with({
      requires = { "nvim-treesitter/nvim-treesitter" },
    })
    .spec(),
  Specification
    .for_plugin("RRethy/nvim-treesitter-endwise")
    .with({
      requires = { "nvim-treesitter/nvim-treesitter" },
    })
    .spec(),
  Specification
    .for_plugin("nvim-treesitter/nvim-treesitter-textobjects")
    .with({
      requires = { "nvim-treesitter/nvim-treesitter" },
    })
    .spec(),

  Specification
    .for_plugin("yamatsum/nvim-nonicons")
    .with({
      requires = { "kyazdani42/nvim-web-devicons" },
    })
    .spec(),

  -- Statusline component to show context of cursor position
  Specification
    .for_plugin("SmiteshP/nvim-gps")
    .with({
      requires = "nvim-treesitter/nvim-treesitter",
      config = [[ require('plugins.options.nvim-gps') ]],
    })
    .spec(),

  -- Statusline
  Specification
    .for_plugin("nvim-lualine/lualine.nvim")
    .with({
      requires = { "kyazdani42/nvim-web-devicons", opt = true },
      config = [[ require('plugins.options.lualine') ]],
    })
    .spec(),

  -- Sidebar with file/symbol/git/diagnostic info
  Specification
    .for_plugin("sidebar-nvim/sidebar.nvim")
    .with({
      config = [[ require('plugins.options.sidebar') ]],
    })
    .spec(),

  -- UI to select things (files, grep results, open buffers...)
  -- Lots of dependencies here (recommended and optional), run
  -- :checkhealth telescope to see what you might need.
  Specification
    .for_plugin("nvim-telescope/telescope.nvim")
    .with({
      requires = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
      },
      config = [[ require('plugins.options.telescope') ]],
    })
    .spec(),

  -- UI replacments for vim.input and vim.select
  Specification
    .for_plugin("stevearc/dressing.nvim")
    .with({
      config = [[ require('dressing').setup()]]
    })
    .spec(),

  -- Snippet sources
  Specification
    .for_plugin("rafamadriz/friendly-snippets")
    .spec(),

  -- Automatic brace and keyword matching
  Specification
    .for_plugin("windwp/nvim-autopairs")
    .with({
      config = [[ require('plugins.options.nvim-autopairs') ]],
    })
    .spec(),

  -- HTML/CSS color visualization
  Specification
    .for_plugin("norcalli/nvim-colorizer.lua")
    .with({
      config = [[ require('plugins.options.nvim-colorizer') ]],
    })
    .spec(),

  -- Display information from git in signcolumn and virtual text
  Specification
    .for_plugin("lewis6991/gitsigns.nvim")
    .with({
      requires = {
        "nvim-lua/plenary.nvim",
      },
      config = [[ require('plugins.options.gitsigns') ]],
    })
    .spec(),

  -- Indentation guides
  Specification
    .for_plugin("lukas-reineke/indent-blankline.nvim")
    .with({
      config = [[ require('plugins.options.indent-blankline') ]],
    })
    .spec(),

  -- Easy commenting
  Specification -- mappings
   .for_plugin("tpope/vim-commentary")
   .spec(),
  Specification -- for files with multiple comment types like vue
    .for_plugin("JoosepAlviste/nvim-ts-context-commentstring")
    .with({
      requires = { "nvim-treesitter/nvim-treesitter" },
    })
    .spec(),

  -- Mappings to add/change/delete things that come in pairs
  Specification
    .for_plugin("tpope/vim-surround")
    .spec(),

  -- Readline editing for command mode
  Specification
    .for_plugin("ryvnf/readline.vim")
    .spec(),

  -- Smooth scrolling
  Specification
    .for_plugin("declancm/cinnamon.nvim")
    .with({
      config = [[ require('plugins.options.cinnamon') ]],
    })
    .spec(),

  -- Floating terminal
  Specification
    .for_plugin("akinsho/toggleterm.nvim")
    .with({
      config = [[ require('plugins.options.toggleterm') ]],
    })
    .spec(),

  -- Git commands in Vim
  Specification
    .for_plugin("tpope/vim-fugitive")
    .spec(),

  -- GitHub integration for vim-fugitive's :GBrowse command
  Specification
    .for_plugin("tpope/vim-rhubarb")
    .with({
      requires = "tpope/vim-fugitive",
    })
    .spec(),

  -- Rust
  Specification
    .for_plugin("simrat39/rust-tools.nvim")
    .with({
      requires = {
        "neovim/nvim-lspconfig",
        "nvim-lua/plenary.nvim",
        "mfussenegger/nvim-dap",
      },
    })
    .spec(),

  -- Kitty
  Specification
    .for_plugin("fladson/vim-kitty")
    .spec(),

  -- Ruby and Rails
  Specification
    .for_plugin("tpope/vim-bundler")
    .spec(),
  Specification
    .for_plugin("tpope/vim-rails")
    .spec(),

  -- Allow the . operator to work on plugin mappings and not just native ones
  Specification
    .for_plugin("tpope/vim-repeat")
    .spec(),
}

return plugins
