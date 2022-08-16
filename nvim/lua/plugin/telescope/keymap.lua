local keymap = vim.keymap

keymap.set('n', '<Leader>ff', '<Cmd>Telescope git_files<CR>')
keymap.set('n', '<Leader>fa', '<Cmd>Telescope find_files<CR>')
keymap.set('n', '<Leader>fg', '<Cmd>Telescope live_grep<CR>')
keymap.set('n', '<Leader>fb', '<Cmd>Telescope buffers<CR>')
keymap.set('n', '<Leader>fh', '<Cmd>Telescope help_tags<CR>')
