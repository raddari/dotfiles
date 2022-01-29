vim.cmd [[packadd packer.nvim]]

local plugins = {
  require('plugin.rose-pine'),
  require('plugin.treesitter'),
}

local packer = require('packer')
local config = require('plugin.packer.config')
packer.startup(config.use(plugins))
