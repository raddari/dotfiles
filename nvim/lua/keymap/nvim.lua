require('lib.keymap')

-- Disable arrow keys
keymap {'', '<Up>', '<Nop>'}
keymap {'', '<Down>', '<Nop>'}
keymap {'', '<Left>', '<Nop>'}
keymap {'', '<Right>', '<Nop>'}

-- Buffer splits
keymap {'n', '<Leader>sv', '<Cmd>vsplit<CR>'}
keymap {'n', '<Leader>sh', '<Cmd>split<CR>'}

-- Remove highlighting
keymap {'n', '<Leader>rh', '<Cmd>noh<CR>'}
