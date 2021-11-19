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
    use 'wbthomason/packer.nvim' -- Package manager
    
    use 'tpope/vim-fugitive' -- Git commands in nvim
    use 'tpope/vim-rhubarb' -- Fugitive-companion to interact with github
    use 'tpope/vim-commentary' -- "gc" to comment visual regions/lines
    use 'tpope/vim-surround'

    -- UI to select things (files, grep results, open buffers...)
    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = 'require("plugins.options.telescope")'
    }

    -- Add indentation guides even on blank lines
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = 'require("plugins.options.indent-blankline")'
    }

    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use {
        'nvim-treesitter/nvim-treesitter',
        config = 'require("plugins.options.treesitter")'
    }

    -- Additional text objects for treesitter
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    use {
        'onsails/lspkind-nvim',
        config = 'require("plugins.options.lspkind-nvim")'
    }

    -- Autocompletion plugin
    use {
        'hrsh7th/nvim-cmp',
        config = 'require("plugins.options.nvim-cmp")'
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use {
        'justinmk/vim-sneak',
        config = 'require("plugins.options.vim-sneak")'
    }

    use {
        'jghauser/mkdir.nvim',
        config = 'require("plugins.options.mkdir")'
    }

    use 'ap/vim-css-color'
    use 'tpope/vim-endwise'

    use {
        'kyazdani42/nvim-web-devicons',
        config = 'require("nvim-web-devicons").get_icons()'
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    use {
        'romgrk/barbar.nvim',
        requres = 'kayzdani42/nvim-web-devicons',
        config = function()
            require('plugins.options.barbar')
            require('plugins.options.tree')
        end
    }

    use {
        'hoob3rt/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = 'require("plugins.options.lualine")'
    }

    use {
        'folke/which-key.nvim',
        config = 'require("plugins.options.whichkey")'
    }

    use {
        'glepnir/dashboard-nvim',
        config = 'require("plugins.options.dashboard")'
    }

	use {
		'shaunsingh/nord.nvim',
		config = 'require("plugins.options.nord")'
	}
end,
config = {
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
    }
}})
