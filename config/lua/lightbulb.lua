require'lspsaga'.init_lsp_saga {
    use_saga_diagnostic_sign = true,
    code_action_icon = "",
    code_action_prompt = {
        enable = true,
        sign = true,
        virtual_text = false
    }
}

vim.cmd('autocmd CursorHold,CursorHoldI * hi LspSagaLightbulbSign ctermfg=yellow ctermbg=NONE guifg=#F2DB55 guibg=NONE')
