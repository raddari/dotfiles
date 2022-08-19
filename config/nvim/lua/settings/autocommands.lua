local augroup = vim.api.nvim_create_augroup
local aucmd = vim.api.nvim_create_autocmd

local ft = augroup('filetype-overrides', {})
aucmd({ 'BufEnter' }, {
  pattern = 'tmux.conf',
  command = 'set filetype=tmux',
  group = ft,
})
