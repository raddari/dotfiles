local lsp = require('lspconfig')

local servers = {
  clangd = require('lsp.config.clangd')
}

for server, config in pairs(servers) do
  lsp[server].setup(config)
end
