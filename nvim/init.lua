local fn = vim.fn
local g = vim.g

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require('paq') {
  'savq/paq-nvim';
  'nvim-treesitter/nvim-treesitter';
  'hoob3rt/lualine.nvim';
  'kyazdani42/nvim-web-devicons';
  'kyazdani42/nvim-tree.lua';
  'cdelledonne/vim-cmake';
  'nvim-lua/plenary.nvim';
  'lewis6991/gitsigns.nvim';
  'sbdchd/neoformat';
  'sainnhe/everforest';
  'EdenEast/nightfox.nvim';
}

g.nvim_tree_quit_on_open = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_show_icons = { git = 1, folders = 1, files = 1 }

g.neoformat_enabled_c = { 'clangformat' }
g.neoformat_enabled_cpp = { 'clangformat' }

g.c_syntax_for_h = 1

require('nvim-treesitter.configs').setup({
  ensure_installed = 'maintained',
  highlight = {
    enable = true
  }
})

require('lualine').setup({
  options = {
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  }
})

require('nvim-tree').setup({
  filters = {
    custom = { '.git' }
  }
})

require('gitsigns').setup()

require('nightfox').load('nordfox')

require('settings')
require('keybinds')
