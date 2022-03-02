require('lib.keymap')

return {
  cmd = {
    'clangd',
    '--clang-tidy',
    '--clang-tidy-checks=-*,clang-analyzer-*,bugprone-*,-bugprone-sizeof-expression,modernise-*',
    '--completion-style=bundled',
    '--cross-file-rename',
    '--header-insertion=never',
  },
  init_options = {
    clangdFileStatus = true,
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },
  on_attach = function (client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    keymap {'n', '<Leader>rn', '<Cmd>lua vim.lsp.buf.rename()<CR>'}
    keymap {'n', '<C-k>', '<Cmd>lua vim.lsp.buf.signature_help()<CR>'}
    keymap {'n', '<Leader>ss', '<Cmd>ClangdSwitchSourceHeader<CR>'}
  end,
}
