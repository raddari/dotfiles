require('lib.keymap')

keymap {'n', '<Space>e', '<Cmd>lua vim.diagnostic.open_float()<CR>'}
keymap {'n', '<Space>q', '<Cmd>lua vim.diagnostic.setloclist()<CR>'}
keymap {'n', '[d', '<Cmd>lua vim.diagnostic.goto_prev()<CR>'}
keymap {'n', ']d', '<Cmd>lua vim.diagnostic.goto_next()<CR>'}
