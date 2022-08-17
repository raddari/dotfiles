local keymap = vim.keymap

local telescope = {}
setmetatable(telescope, {
  __index = function(_, key)
    return require('telescope.' .. key)
  end
})

keymap.set('n', '<Leader>ff', telescope.builtin.git_files)
keymap.set('n', '<Leader>fa', telescope.builtin.find_files)
keymap.set('n', '<Leader>fg', telescope.builtin.live_grep)
keymap.set('n', '<Leader>fb', telescope.builtin.buffers)
keymap.set('n', '<Leader>fh', telescope.builtin.help_tags)
