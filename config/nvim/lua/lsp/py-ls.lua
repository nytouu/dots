-- npm i -g pyright
require'lspconfig'.pyls.setup {
--     cmd = {DATA_PATH .. "/lspinstall/python/node_modules/.bin/pyright-langserver", "--stdio"},
--     handlers = {
--         ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--             virtual_text = true,
--             signs = true,
--             underline = true,
--             update_in_insert = true
--         })
--     }
}