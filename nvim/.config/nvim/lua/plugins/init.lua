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

    local plugins = require('plugins.plugins')
    for _, plugin in ipairs(plugins) do
      use(plugin)
    end

		-- Automatically sync if packer was installed
		if packer_bootstrap then
			require("packer").sync()
		end
	end,
	config = {
		autoremove = true,
	},
})
