vim.lsp.config('*', {
  capabilities = capabilities,
})

vim.lsp.config('pyright', {})
vim.lsp.enable('pyright')

vim.lsp.config('ts_ls', {})
vim.lsp.enable('ts_ls')

vim.lsp.config('prismals', {})
vim.lsp.enable('prismals')

vim.lsp.config('cssls', {
  capabilities = capabilities,
})
vim.lsp.enable('cssls')

vim.lsp.config('golangci_lint_ls', {})
vim.lsp.enable('golangci_lint_ls')

vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = true,
        experimental = {
          enable = true,
        },
      },
    },
  },
})
vim.lsp.enable('rust_analyzer')