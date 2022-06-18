-- Install packer
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

vim.cmd([[
	augroup Packer
	autocmd!
	autocmd BufWritePost init.lua PackerCompile
	augroup end
]])

local use = require("packer").use
return require("packer").startup({
	function()
		-- Packer can manage itself
		use("wbthomason/packer.nvim")

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
		-- For language server installation see:
		-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
		use({
			"neovim/nvim-lspconfig",
			config = [[ require('plugins.options.lspconfig') ]],
		})

		-- Hook into LSP for things like formatting
		use({
			"jose-elias-alvarez/null-ls.nvim",
			requires = { "neovim/nvim-lspconfig" },
			config = [[ require('plugins.options.null-ls') ]],
		})

		-- Adds pictocgrams to lsp completion menus
		use("onsails/lspkind-nvim")

		-- Debug adapter protocol (DAP)
		-- For language adapters see:
		-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
		use({
			"rcarriga/nvim-dap-ui",
			requires = { "mfussenegger/nvim-dap" },
			config = [[ require('plugins.options.dap') ]],
		})

		use({
			"theHamsta/nvim-dap-virtual-text",
			requires = {
				"mfussenegger/nvim-dap",
				"nvim-treesitter/nvim-treesitter",
			},
			config = [[ require('plugins.options.dap-virtual-text') ]],
		})

		-- Notification system
		use({
			"rcarriga/nvim-notify",
			config = [[ require('plugins.options.nvim-notify') ]],
		})

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

		-- Command line replacement
		-- border not showing up in search box
		-- shows up in lualine tabline
		-- no integration with nvim-cmp
		-- use({
		-- 	"VonHeikemen/fine-cmdline.nvim",
		-- 	requires = {
		-- 		{ "MunifTanjim/nui.nvim" },
		-- 	},
		-- 	config = [[ require('plugins.options.fine-cmdline' )]],
		-- })
		-- use({
		-- 	"VonHeikemen/searchbox.nvim",
		-- 	requires = {
		-- 		{ "MunifTanjim/nui.nvim" },
		-- 	},
		-- 	config = [[ require('plugins.options.searchbox' )]],
		-- })

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

		-- Tells vim.ui.select to use Telescope
		use({
			"nvim-telescope/telescope-ui-select.nvim",
			requires = { "nvim-telescope/telescope.nvim" },
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
			ft = { "html", "css" },
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

		-- Focus mode
		use({
			"folke/twilight.nvim",
			config = [[ require('plugins.options.twilight') ]],
			cmd = { "Twilight", "TwilightEnable", "TwilightDisable" },
		})

		use({
			"folke/zen-mode.nvim",
			config = [[ require('plugins.options.zen-mode') ]],
			cmd = { "ZenMode" },
		})

		use({
			"andreadev-it/shade.nvim",
			config = [[ require('plugins.options.shade') ]],
		})

		use({
			"anuvyklack/pretty-fold.nvim",
			config = [[ require('plugins.options.pretty-fold') ]],
			requires = { "anuvyklack/nvim-keymap-amend" },
		})

		-- Rust
		use({
			"simrat39/rust-tools.nvim",
			requires = {
				"neovim/nvim-lspconfig",
				"nvim-lua/plenary.nvim",
				"mfussenegger/nvim-dap",
			},
			config = [[ require('plugins.options.rust-tools') ]],
		})

		-- Kitty
		use("fladson/vim-kitty")

		-- Automatically sync if packer was installed
		if packer_bootstrap then
			require("packer").sync()
		end
	end,
	autoremove = true,
})
