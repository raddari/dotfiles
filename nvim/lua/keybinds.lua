local keymap = function (key)
  local opts = {noremap = true}
  for i, v in pairs(key) do
    if type(i) == 'string' then opts[i] = v end
  end

  local buffer = opts.buffer
  opts.buffer = nil

  if buffer then
    vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
  else
    vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
  end
end

keymap {'n', '<Leader>t', ':NvimTreeToggle<CR>'}

keymap {'n', '<Leader>ff', ':Telescope git_files<CR>'}
keymap {'n', '<Leader>fa', ':Telescope find_files<CR>'}
keymap {'n', '<Leader>fg', ':Telescope live_grep<CR>'}
keymap {'n', '<Leader>fb', ':Telescope buffers<CR>'}
keymap {'n', '<Leader>fh', ':Telescope help_tags<CR>'}

keymap {'n', '<Leader>l', ':Limelight!!<CR>'}
