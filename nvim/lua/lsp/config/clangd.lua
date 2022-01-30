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
  on_attach = function (client, buffer)
    vim.api.nvim_buf_set_option(buffer, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  end,
}
