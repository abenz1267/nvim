local nvim_lsp = require'lspconfig'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.gopls.setup {
    capabilities = capabilities,
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
          unreachable = true
        },
        staticcheck = true,
        completeUnimported = true,
        gofumpt = false,
        deepCompletion = true,
        usePlaceholders = true,
      },
    },
  }

function Goimports(timeoutms)
  local context = { source = { organizeImports = true } }
  vim.validate { context = { context, "t", true } }

  local params = vim.lsp.util.make_range_params()
  params.context = context

  local method = "textDocument/codeAction"
  local resp = vim.lsp.buf_request_sync(0, method, params, timeoutms)
  if resp and resp[1] then
    local result = resp[1].result
    if result and result[1] then
      local edit = result[1].edit
      vim.lsp.util.apply_workspace_edit(edit)
    end
  end

  vim.lsp.buf.formatting()
end

vim.cmd 'autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4'
vim.cmd 'autocmd BufWritePre *.go lua Goimports(1000)'
