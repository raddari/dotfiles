vim.cmd [[packadd packer.nvim]]

local plugins = {
	require('plugin.rose-pine')
}

local packer = require('packer')
local config = require('plugin.packer.config')
packer.startup(config.use(plugins))
