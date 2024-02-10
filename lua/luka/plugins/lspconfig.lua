local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- formatting
  if client.server.capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lap.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

-- golang lsp
nvim_lsp.gopls.setup {
  on_attach = on_attach,
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  cmd = { "gopls" }
}

-- python lsp
nvim_lsp.pyright.setup {
  on_attach = on_attach,
  filetypes = { "python" },
  cmd = { "pyright-langserver", "--stdio" }
}

-- typescript lsp
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.lua_ls.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognoze vim global
        globals = { 'vim' }
      },

      workspace = {
        -- Make the server aware of neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true)
      }
    }
  }
}
