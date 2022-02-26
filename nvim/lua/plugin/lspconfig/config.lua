local lsp = require('lspconfig')

local servers = {
  clangd = require('lsp.config.clangd'),
  hls = require('lsp.config.hls'),
}

for server, config in pairs(servers) do
  lsp[server].setup(config)
end
