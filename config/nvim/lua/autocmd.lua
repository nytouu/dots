-- vim.cmd('autocmd VimEnter * hi Normal guibg=NONE')

vim.cmd('autocmd BufWritePost *.ms execute "!croffpdf %"| redraw!')
vim.cmd('autocmd VimLeavePre * :set guicursor=n-c-v-r-i-ci-ve:ver25')

-- highlights
vim.cmd('autocmd VimEnter * hi ScrollView guibg=#414868')
vim.cmd('autocmd VimEnter * hi LineNr guifg=#414868')
vim.cmd('autocmd VimEnter * hi CursorLine guibg=#1f2335')
vim.cmd('autocmd VimEnter * hi CursorLineNR guifg=#7aa2f7')
vim.cmd('autocmd VimEnter * hi DiffAdd guifg=#9ece6a guibg=none')
vim.cmd('autocmd VimEnter * hi DiffChange guifg=#7aa2f7 guibg=none')
vim.cmd('autocmd VimEnter * hi DiffModified guifg =#7aa2f7 guibg=none')
vim.cmd('autocmd VimEnter * hi DiffDelete guifg=#f7768e guibg=none')
vim.cmd('autocmd VimEnter * hi NvimTreeFolderIcon guifg=#7aa2f7')
vim.cmd('autocmd VimEnter * hi VertSplit guibg=NONE guifg=#414868')
vim.cmd('autocmd BufEnter NvimTree hi NvimTreeFolderName guifg=#7aa2f7')
vim.cmd('autocmd BufEnter NvimTree hi NvimTreeIndentMarker guifg=#c0caf5')
vim.cmd('autocmd BufEnter NvimTree hi NvimTreeVertSplit guibg=#1f2335 guifg=#1f2335')
vim.cmd('autocmd VimEnter * hi TelescopeBorder guifg=#7aa2f7')
vim.cmd('autocmd VimEnter * hi TelescopePromptBorder  guifg=#7aa2f7')
vim.cmd('autocmd VimEnter * hi TelescopeResultsBorder guifg=#7aa2f7')
vim.cmd('autocmd VimEnter * hi TelescopePreviewBorder guifg=#7aa2f7')
