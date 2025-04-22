local capabilities = {
  textDocument = {
    foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true
    }
  }
}

capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)

vim.lsp.config("*", {
	capabilities = capabilities,
	root_markers = { ".git" },
})


-- auto completion
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = false })
    end
  end,
})


-- Enable each language server by filename under the lsp/ folder
vim.lsp.enable({ 
  "clangd",
  "html",
  "emmet_language_server",
  "cssls",
  "ts_ls",
  "lua_ls",
  "pyright",
  "gopls",
  "rust_analyzer"
})
