vim.cmd([[packadd packer.nvim]])

local plugins = {
  require('plugin.filetype'),
  require('plugin.focus'),
  require('plugin.gitsigns'),
  require('plugin.limelight'),
  require('plugin.lspconfig'),
  require('plugin.lualine'),
  require('plugin.telescope'),
  require('plugin.themes'),
  require('plugin.tree'),
  require('plugin.treesitter'),
}

local packer = require('packer')
local config = require('plugin.packer.config')
packer.init(config.init)
packer.startup(config.use(plugins))
