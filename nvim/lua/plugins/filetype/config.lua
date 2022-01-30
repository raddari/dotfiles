require('filetype').setup({
  overrides = {
    extensions = {
      h = 'c',
      hpp = 'cpp',
    },
    literal = {
      ['.env'] = 'config',
    },
  },
})
