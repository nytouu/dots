-- leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '-', ':RnvimrToggle<CR>', {noremap = true, silent = true})

-- open dashboard
vim.api.nvim_set_keymap('n', '<Leader>d', ':Dashboard<CR>', {silent = true})

-- fold open/close
vim.api.nvim_set_keymap('n', '<Leader>o', ':foldopen<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>c', ':foldopen<CR>', {silent = true})

-- telescope stuff
vim.api.nvim_set_keymap('n', 'ff', ':Telescope find_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'fg', ':Telescope live_grep<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'fo', ':Telescope oldfiles<CR>', {noremap = true, silent = true})

-- buffer movement
vim.api.nvim_set_keymap('n', '<S-j>', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-k>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-c>', ':bdelete<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gb', ':BufferLinePick<CR>', {noremap = true, silent = true})

-- prodoc/commenting
-- vim.api.nvim_set_keymap('n', 'gcc', ':ProComment<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('x', 'gcc', ':ProComment<CR>', {noremap = true, silent = true})

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- split
vim.api.nvim_set_keymap('n', '<Leader>sh', ':split<CR>',  {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>sv', ':vsplit<CR>', {noremap = true, silent = true})

-- Terminal window navigation
vim.cmd([[
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>
]])

-- resize with arrows
vim.cmd([[
    nnoremap <silent> <C-Up>    :resize -1<CR>
    nnoremap <silent> <C-Down>  :resize +1<CR>
    nnoremap <silent> <C-Left>  :vertical resize -2<CR>
    nnoremap <silent> <C-Right> :vertical resize +2<CR>
]])

-- better indenting
vim.api.nvim_set_keymap('n', '<M-h>', '<<', {silent = true})
vim.api.nvim_set_keymap('n', '<M-l>', '>>', {silent = true})
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- move lines up or down
vim.api.nvim_set_keymap('n', '<M-k>', ':move-2<CR>', {silent = true}) -- move a single line in normal
vim.api.nvim_set_keymap('n', '<M-j>', ':move+<CR>',  {silent = true})
vim.api.nvim_set_keymap('x', '<M-k>', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true}) -- move multiple lines in visual
vim.api.nvim_set_keymap('x', '<M-j>', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')

vim.cmd("nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>")
vim.cmd("nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>")
vim.cmd("nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>")
vim.cmd("nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>")
vim.cmd("nnoremap <silent> ca :Lspsaga code_action<CR>")
vim.cmd("nnoremap <silent> gk :Lspsaga hover_doc<CR>")
-- vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.cmd("nnoremap <silent> <C-p> :Lspsaga diagnostic_jump_prev<CR>")
vim.cmd("nnoremap <silent> <C-n> :Lspsaga diagnostic_jump_next<CR>")
-- scroll down hover doc or scroll in definition preview
vim.cmd("nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
-- scroll up hover doc
vim.cmd("nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")
vim.cmd('command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle()')
-- vim.api.nvim_set_keymap('i', '<CR>', 'v:lua.MUtils.completion_confirm()', {expr = true, noremap = true})
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
