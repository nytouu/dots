vim.cmd('colorscheme dracula')

vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8" -- The encoding written to file

vim.cmd('autocmd VimEnter * hi Normal ctermfg=white ctermbg=NONE guifg=white guibg=NONE')
vim.cmd('let g:vim_current_word#highlight_current_word = 0')

vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.o.completeopt = "menuone,noselect"
vim.cmd('set colorcolumn=99999') -- fix indentline for now
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.ignorecase = false
vim.o.mouse = "a" -- Enable your mouse
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.title = true
TERMINAL = vim.fn.expand('$TERMINAL')
vim.cmd('let &titleold="TERMINAL"')
vim.o.titlestring="nvim - %<%F%="
vim.wo.number = true -- set numbered lines
vim.wo.relativenumber = false -- set relative number
vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
vim.o.showtabline = 2 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.termguicolors = true -- set term giu colors most terminals support this
vim.o.t_Co = "256" -- Support 256 colors
vim.o.updatetime = 300 -- Faster completion
-- vim.o.timeoutlen = 100 -- By default timeoutlen is 1000 ms
vim.bo.smartindent = true -- Makes indenting smart
vim.bo.expandtab = true -- Converts tabs to spaces
vim.wo.wrap = false -- Display long lines as just one line
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.cmd('syntax on')
vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
-- vim.cmd('set inccommand=split') -- Make substitution work in realtime
-- vim.o.backup = false -- This is recommended by coc
-- vim.o.writebackup = false -- This is recommended by coc
vim.o.guifont = "TerminessTTF Nerd Font Mono:h20:style=Medium"
