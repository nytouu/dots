-- vim.cmd('autocmd VimEnter * hi Normal guibg=NONE')

vim.cmd('autocmd BufWritePost *.ms execute "!croffpdf %"| redraw!')
vim.cmd('autocmd VimLeavePre * :set guicursor=n-c-v-r-i-ci-ve:ver25')
vim.cmd('autocmd VimEnter * hi ScrollView guibg=#414868')
