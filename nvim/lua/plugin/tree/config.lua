local g = vim.g

-- TODO(raddari): move these to setup when they are relocated
g.nvim_tree_git_hl = 1
g.nvim_tree_show_icons = {git = 1, folders = 1, files = 1}

require('nvim-tree').setup({
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  filters = {
    custom = {'.git'}
  },
})
