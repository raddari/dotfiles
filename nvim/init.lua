local fn = vim.fn
local g = vim.g

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require 'paq' {
  'savq/paq-nvim';
  'nvim-treesitter/nvim-treesitter';
  'hoob3rt/lualine.nvim';
  'kyazdani42/nvim-web-devicons';
  'cdelledonne/vim-cmake';
  'nvim-lua/plenary.nvim';
  'lewis6991/gitsigns.nvim';
  'sbdchd/neoformat';
  'arcticicestudio/nord-vim';
  'sainnhe/everforest';
}

require 'nvim-treesitter.configs'.setup {
  ensure_installed = 'maintained',
  highlight = {
    enable = true
  }
}

require 'lualine'.setup {
  options = {
    theme = 'everforest',
  }
}

require 'gitsigns'.setup()

g.neoformat_enabled_c = {'clangformat'}
g.neoformat_enabled_cpp = {'clangformat'}

g.c_syntax_for_h = 1

vim.cmd 'colorscheme everforest'

require 'settings'
