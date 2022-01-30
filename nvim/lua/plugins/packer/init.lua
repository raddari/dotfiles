vim.cmd([[packadd packer.nvim]])

local plugins = {
  require('plugin.focus'),
  require('plugin.gitsigns'),
  require('plugin.lspconfig'),
  require('plugin.lualine'),
  require('plugin.themes'),
  require('plugin.tree'),
  require('plugin.treesitter'),
}

local packer = require('packer')
local config = require('plugin.packer.config')
packer.init(config.init)
packer.startup(config.use(plugins))
