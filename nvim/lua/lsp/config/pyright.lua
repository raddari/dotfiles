require('lib.keymap')

return {
  on_attach = function (client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    keymap {'n', '<Leader>ri', '<Cmd>PyrightOrganizeImports<CR>'}
  end,
}
