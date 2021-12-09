-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[
	augroup Packer
	autocmd!
	autocmd BufWritePost init.lua PackerCompile
	augroup end
]]

local use = require('packer').use
return require('packer').startup({function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

  -- On screen keymapping help
  use  { 
    'folke/which-key.nvim',
    config = [[ require('plugins.options.which-key') ]],
  }

  -- Keymapping (to be merged into neovim core)
  use  'tjdevries/astronauta.nvim'

	-- Highlight, edit, and navigate code using a fast incremental
  -- parsing library
	use {
		'nvim-treesitter/nvim-treesitter',
		-- Update the language parsers when updating Treesitter
		run = ":TSUpdate",
		config = [[ require('plugins.options.treesitter') ]],
	}

  -- Treesitter plugins
  use 'windwp/nvim-ts-autotag' -- autoclose and rename HTML tags
  use 'p00f/nvim-ts-rainbow' -- rainbow parentheses

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = [[ require('plugins.options.lualine') ]],
  }
  
  -- Tabline
  use {
    'kdheepak/tabline.nvim',
    requires = { 
      { 'hoob3rt/lualine.nvim', opt = true },
      { 'kyazdani42/nvim-web-devicons', opt = true }
    },
    config = [[ require('plugins.options.tabline') ]],
  }

  -- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' }, -- for file icons
    config = [[ require('plugins.options.nvim-tree') ]],
  }

  -- UI to select things (files, grep results, open buffers...)
  -- Lots of dependencies here (recommended and optional), run
  -- :checkhealth telescope to see what you might need.
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', },
    },
    config = [[ require('plugins.options.telescope') ]],
  }

	-- Colorscheme
	use 'shaunsingh/nord.nvim'

  -- Editing
  use {
    'windwp/nvim-autopairs',
    config = [[ require('plugins.options.nvim-autopairs') ]],
  }
end,
config = {
	display = {
		open_fn = function()
			return require('packer.util').float({ border = 'single' })
		end
	}
}})
