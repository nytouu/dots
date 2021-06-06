vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_italic_comments = false
vim.g.tokyonight_sidebars = { "NvimTree", "Outline", "terminal", "packer" }
-- vim.g.tokyonight_dark_sidebar = false false
vim.cmd('colorscheme tokyonight')

vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"

vim.o.clipboard = "unnamedplus"
vim.o.completeopt = "menuone,noselect"
vim.cmd('set colorcolumn=99999')
vim.o.ignorecase = true
vim.wo.foldmethod = "indent"
vim.wo.foldlevel = 99
vim.o.pumheight = 25
vim.o.pumblend = 0
vim.o.mouse = "a"
vim.wo.cursorline = true
vim.o.title = true
TERMINAL = vim.fn.expand('$TERMINAL')
vim.cmd('let &titleold="'..TERMINAL..'"')
vim.o.titlestring="nvim - %t %r %m"
vim.o.titlelen = 50
vim.wo.number = true
vim.wo.relativenumber = false
vim.o.hidden = true
vim.cmd('set ts=4')
vim.cmd('set sw=4')
vim.o.cmdheight = 1
vim.o.confirm = true
vim.o.showtabline = 2
vim.o.showmode = false
vim.o.termguicolors = true
vim.o.updatetime = 300
vim.o.timeoutlen = 1500
vim.bo.smartindent = true
vim.bo.expandtab = true
vim.wo.wrap = false
vim.wo.signcolumn = "yes"
vim.o.conceallevel = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.synmaxcol = 1024
vim.cmd('syntax on')
vim.cmd('set shortmess+=c')
vim.o.backup = false
vim.o.writebackup = false
vim.cmd('let g:vim_current_word#highlight_current_word = 0')
vim.cmd('let g:vim_current_word#highlight_twins = 1')
-- vim.cmd('let g:vim_current_word#highlight_delay = 500')
vim.cmd('hi CurrentWordTwins guibg=#2c3044')
vim.g.minimap_highlight_range = true
vim.g.minimap_highlight = 'MinimapCurrentLine'
vim.cmd('hi MinimapCurrentLine guifg=#77a2f7 guibg=#2c3044')
-- vim.cmd('hi MinimapCurrentLine guifg=#77a2f7 guibg=#24283b')
vim.o.guifont = "TerminessTTF Nerd Font:h17"
