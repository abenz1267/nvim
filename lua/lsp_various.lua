local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local nvim_lsp = require 'lspconfig'

local servers = {"html", "cssls", "tsserver"}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {capabilities = capabilities}
end

require('nlua.lsp.nvim').setup(require('lspconfig'), {})

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      underline = false,
      virtual_text = false,
      update_in_insert = false
    })

vim.cmd 'autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.go lua vim.lsp.buf.formatting_sync(nil, 1000)'
