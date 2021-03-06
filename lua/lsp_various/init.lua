local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local nvim_lsp = require'lspconfig'

nvim_lsp.cssls.setup{capabilities = capabilities}
nvim_lsp.html.setup{capabilities = capabilities}
nvim_lsp.tsserver.setup{capabilities = capabilities}

require('nlua.lsp.nvim').setup(require('lspconfig'), {
})
