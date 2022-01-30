require('lib.keymap')

-- Disable arrow keys
keymap {'', '<Up>', '<Nop>'}
keymap {'', '<Down>', '<Nop>'}
keymap {'', '<Left>', '<Nop>'}
keymap {'', '<Right>', '<Nop>'}

keymap {'n', '<Leader>sv', '<Cmd>vsplit<CR>'}
keymap {'n', '<Leader>sh', '<Cmd>split<CR>'}
