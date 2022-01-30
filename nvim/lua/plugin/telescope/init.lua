return {
  'nvim-telescope/telescope.nvim',
  requires = {'nvim-lua/plenary.nvim'},
  config = function ()
    require('plugin.telescope.config')
    require('plugin.telescope.keymap')
  end,
}
