-- Bootstrap packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd('packadd packer.nvim')
end

vim.cmd [[autocmd BufWritePost plugins/init.lua source plugins/init.lua | PackerCompile ]]

return require('packer').startup({function(use)
	use 'wbthomason/packer.nvim'

    use 'neovim/nvim-lspconfig'
    use {
        'hrsh7th/nvim-compe',
        config = 'require("plugins.options.nvim-compe")'
    }
    use {
        'kabouzeid/nvim-lspinstall',
        config = 'require("plugins.options.nvim-lspinstall")'
    }
    use {
        'onsails/lspkind-nvim',
        config = 'require("plugins.options.lspkind-nvim")'
    }

    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'

    use {
        'justinmk/vim-sneak',
        config = 'require("plugins.options.vim-sneak")'
    }

    use {
        'jghauser/mkdir.nvim',
        config = 'require("plugins.options.mkdir")'
    }

    use 'mattn/emmet-vim'
    use 'ap/vim-css-color'
    use 'pangloss/vim-javascript'
    use 'nikvdp/ejs-syntax'
    use 'MaxMEllon/vim-jsx-pretty'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

    use 'folke/lua-dev.nvim'

    use {
        'lukas-reineke/indent-blankline.nvim',
        config = 'require("plugins.options.indent-blankline")'
    }

    use {
        'kyazdani42/nvim-web-devicons',
        config = 'require("nvim-web-devicons").get_icons()'
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        config = 'require("plugins.options.telescope")'
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

    use {
        '~/Projects/pomodoro.nvim',
         requires = 'MunifTanjim/nui.nvim'
    }
end,
config = {
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
    }
}})
