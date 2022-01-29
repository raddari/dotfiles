local fn = vim.fn
local g = vim.g

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require('paq') {
  'savq/paq-nvim';
  'kyazdani42/nvim-web-devicons';
  'nvim-lua/plenary.nvim';
  'hoob3rt/lualine.nvim';
  'lewis6991/gitsigns.nvim';
  'nvim-treesitter/nvim-treesitter';
  'kyazdani42/nvim-tree.lua';
  'neovim/nvim-lspconfig';
  'beauwilliams/focus.nvim';
  'junegunn/limelight.vim';
  'nvim-telescope/telescope.nvim';
  'sbdchd/neoformat';
  'rktjmp/lush.nvim';
  'rose-pine/neovim';
}

g.nvim_tree_quit_on_open = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_show_icons = {git = 1, folders = 1, files = 1}

g.neoformat_enabled_c = {'clangformat'}
g.neoformat_enabled_cpp = {'clangformat'}

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
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
  }
})

require('nvim-tree').setup({
  filters = {
    custom = {'.git'}
  }
})

require('focus').setup()

require('gitsigns').setup()

g.rose_pine_disable_italics = true
require('rose-pine').set('main')

require('settings')
require('keybinds')
