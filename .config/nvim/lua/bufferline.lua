vim.cmd("let bufferline = get(g:, 'bufferline', {})")
vim.cmd('let bufferline.auto_hide = v:false')
vim.cmd('let bufferline.icon_custom_colors = v:false')
vim.cmd('let bufferline.maximum_padding = 4')

vim.cmd("let bg_current = get(nvim_get_hl_by_name('Normal',     1), 'background', '#000000')")
vim.cmd("let bg_visible = get(nvim_get_hl_by_name('TabLineSel', 1), 'background', '#000000')")
vim.cmd("let bg_inactive = get(nvim_get_hl_by_name('TabLine',   1), 'background', '#000000')")

-- For the current active buffer
vim.cmd('hi default link BufferCurrent      Normal')
-- For the current active buffer when modified
vim.cmd('hi default link BufferCurrentMod   Normal')
-- For the current active buffer icon
vim.cmd('hi default link BufferCurrentSign  Normal')
-- For the current active buffer target when buffer-picking
vim.cmd("exe 'hi default BufferCurrentTarget   guifg=red gui=bold guibg=' . bg_current")
-- For buffers visible but not the current one
vim.cmd('hi default link BufferVisible      TabLineSel')
vim.cmd('hi default link BufferVisibleMod   TabLineSel')
vim.cmd('hi default link BufferVisibleSign  TabLineSel')
vim.cmd("exe 'hi default BufferVisibleTarget   guifg=red gui=bold guibg=' . bg_visible")

-- For buffers invisible buffers
vim.cmd('hi default link BufferInactive     TabLine')
vim.cmd('hi default link BufferInactiveMod  TabLine')
vim.cmd('hi default link BufferInactiveSign TabLine')
vim.cmd("exe 'hi default BufferInactiveTarget   guifg=red gui=bold guibg=' . bg_inactive")

-- For the shadow in buffer-picking mode
vim.cmd('hi default BufferShadow guifg=#000000 guibg=#000000')

vim.cmd('hi CustomExplorerBg guibg=#181621')
