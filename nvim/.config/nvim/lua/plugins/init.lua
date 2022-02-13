-- Install packer
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
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

		use({
			"kosayoda/nvim-lightbulb",
			config = [[ require('plugins.options.nvim-lightbulb') ]],
		})
		use({
			"weilbith/nvim-code-action-menu",
			cmd = "CodeActionMenu",
		})

		-- Hook into LSP for things like formatting
		use({
			"jose-elias-alvarez/null-ls.nvim",
			requires = { "neovim/nvim-lspconfig" },
			config = [[ require('plugins.options.null-ls') ]],
		})

		-- Adds pictocgrams to lsp completion menus
		use("onsails/lspkind-nvim")

		-- UI for lsp progress
		use({
			"j-hui/fidget.nvim",
			--config = [[ require('plugins.options.fidget') ]],
		})

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
			"yamatsum/nvim-nonicons",
			requires = { "kyazdani42/nvim-web-devicons" },
		})

		-- Statusline
		use({
			"nvim-lualine/lualine.nvim",
			requires = { "kyazdani42/nvim-web-devicons", opt = true },
			config = [[ require('plugins.options.lualine') ]],
		})

		-- Tabline
		use({
			"kdheepak/tabline.nvim",
			requires = {
				{ "hoob3rt/lualine.nvim", opt = true },
				{ "kyazdani42/nvim-web-devicons", opt = true },
			},
			config = [[ require('plugins.options.tabline') ]],
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

		-- Tells vim.ui.select to use Telescope
		use({
			"nvim-telescope/telescope-ui-select.nvim",
			requires = { "nvim-telescope/telescope.nvim" },
		})

		-- Wrapper for :mksession
		use({
			"Shatur/neovim-session-manager",
			requires = {
				"nvim-telescope/telescope.nvim",
				requires = {
					"nvim-lua/plenary.nvim",
				},
			},
			config = [[ require('plugins.options.neovim-session-manager') ]],
			cmd = { "SessionManager" },
		})

		-- Greeter/Dashboard for opening neovim without a file
		use({
			"goolord/alpha-nvim",
			requires = { "kyazdani42/nvim-web-devicons" },
			config = [[ require('plugins.options.alpha') ]],
		})

		-- Snippet sources
		use("rafamadriz/friendly-snippets")

		-- Automatic brace and keyword matching
		use({
			"windwp/nvim-autopairs",
			config = [[ require('plugins.options.nvim-autopairs') ]],
		})

		-- Colorscheme
		use("shaunsingh/nord.nvim")

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

		-- Git conflict highlighting
		use("rhysd/conflict-marker.vim")

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
			"sunjon/shade.nvim",
			config = [[ require('plugins.options.shade') ]],
		})

		use({
			"anuvyklack/pretty-fold.nvim",
			config = [[ require('plugins.options.pretty-fold') ]],
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

		-- Send commands from vim to a tmux pane
		--use("jgdavey/tslime.vim")

		-- Ruby/Rails/Rspec plugins
		--use({
		--	"thoughtbot/vim-rspec",
		--	config = [[ require('plugins.options.vim-rspec') ]],
		--	ft = { "ruby" },
		--})
	end,
	config = {
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
	},
})
