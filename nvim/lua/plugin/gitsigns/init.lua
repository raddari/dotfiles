return {
  'lewis6991/gitsigns.nvim',
  requires = {'nvim-lua/plenary.nvim'},
  config = function ()
    require('plugin.gitsigns.config')
  end,
}
