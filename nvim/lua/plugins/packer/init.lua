vim.cmd [[packadd packer.nvim]]

local plugins = {
  require('plugin.themes'),
  require('plugin.treesitter'),
  require('plugin.lualine'),
}

local packer = require('packer')
local config = require('plugin.packer.config')
packer.init(config.init)
packer.startup(config.use(plugins))
