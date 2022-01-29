local keymap = function (key)
  local opts = {noremap = true, silent = true}
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

keymap {'n', '<Leader>t', '<Cmd>NvimTreeToggle<CR>'}

keymap {'n', '<Leader>l', '<Cmd>Limelight!!<CR>'}

keymap {'n', '<Leader>ff', '<Cmd>Telescope git_files<CR>'}
keymap {'n', '<Leader>fa', '<Cmd>Telescope find_files<CR>'}
keymap {'n', '<Leader>fg', '<Cmd>Telescope live_grep<CR>'}
keymap {'n', '<Leader>fb', '<Cmd>Telescope buffers<CR>'}
keymap {'n', '<Leader>fh', '<Cmd>Telescope help_tags<CR>'}

keymap {'n', '<Space>e', '<Cmd>lua vim.diagnostic.open_float()<CR>'}
keymap {'n', '<Space>q', '<Cmd>lua vim.diagnostic.setloclist()<CR>'}
keymap {'n', '[d', '<Cmd>lua vim.diagnostic.goto_prev()<CR>'}
keymap {'n', ']d', '<Cmd>lua vim.diagnostic.goto_next()<CR>'}

local lsp_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

local servers = {'clangd'}
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = lsp_attach,
  }
end
