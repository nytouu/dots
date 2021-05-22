vim.cmd('colorscheme dracula')

vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"

vim.o.clipboard = "unnamedplus"
vim.o.completeopt = "menuone,noselect"
vim.cmd('set colorcolumn=99999')
vim.o.ignorecase = true
vim.wo.foldmethod = "indent"
vim.wo.foldlevel = 99 -- not sure if this works
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
vim.wo.relativenumber = true
vim.o.hidden = true
vim.cmd('set ts=4')
vim.cmd('set sw=4')
vim.o.cmdheight = 2
vim.o.confirm = true
vim.o.showtabline = 2
vim.o.showmode = false
vim.o.termguicolors = true
vim.o.t_Co = "256"
vim.o.updatetime = 300
vim.o.timeoutlen = 500
vim.bo.smartindent = true
vim.bo.expandtab = true
vim.wo.wrap = false
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.conceallevel = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.cmd('syntax on')
vim.cmd('set shortmess+=c')
vim.o.backup = false
vim.o.writebackup = false
vim.o.guifont = "TerminessTTF Nerd Font Mono:h20:style=Medium"

vim.o.guicursor = -- TODO fix guicursor thing
  table.concat(
  {
    [[n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50]],
    [[a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor]],
    [[sm:block-blinkwait175-blinkoff150-blinkon175]]
  },
  ","
)
