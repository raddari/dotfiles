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
  on_attach = function(client, bufnr)
    require('lsp.config.default').on_attach(client, bufnr)
    vim.keymap.set('n', '<Leader>ss', '<Cmd>ClangdSwitchSourceHeader<CR>', { buffer = bufnr })
  end,
}
