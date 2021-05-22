vim.cmd('autocmd VimEnter * hi Normal ctermfg=white ctermbg=NONE guifg=white guibg=NONE')
vim.cmd('let g:vim_current_word#highlight_current_word = 0')

vim.cmd('autocmd BufWritePost *.ms execute "!croffpdf %"| redraw!')

vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
vim.fn.sign_define( 'LightBulbSign', { text = "", texthl = "TSAnnotation", linehl="", numhl="" })
