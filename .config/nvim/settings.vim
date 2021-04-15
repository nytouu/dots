" import theme first to avoid color issues
colorscheme dracula

set encoding=UTF-8
set fileencoding=utf-8

autocmd VimEnter * hi CurrentWordTwins gui=underline
autocmd VimEnter * hi Normal ctermfg=white ctermbg=NONE guibg=NONE
let g:vim_current_word#highlight_current_word = 0

set clipboard=unnamedplus
set completeopt=menuone,noselect
set colorcolumn=99999
set pumheight=10
set ignorecase
set mouse=a
set cursorline
"set guicursor=
set title
set number
set ruler
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showtabline=2
set noshowmode
set termguicolors
set hidden
set updatetime=300
" set timeoutlen=100
set laststatus=2
set incsearch
set smartindent
set expandtab
set nowrap
set signcolumn=yes
" set cmdheight=5
set foldmethod=indent
set foldlevel=99
set splitbelow
set splitright
" set guifont="TerminessTTF Nerd Font:h17"
" syntax on
filetype plugin indent on

let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_insert_delay = 1

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

let g:python_host_prog = '/usr/bin/python3'
let g:python3_host_prog = '/usr/bin/python3'

let g:sneak#label = 1

let &titleold="st"

" let g:nvim_tree_auto_close = 1
let g:nvim_tree_indent_markers = 1

let bufferline = get(g:, 'bufferline', {})
let bufferline.auto_hide = v:false
let bufferline.icon_custom_colors = v:false
let bufferline.maximum_padding = 4

let bg_current = get(nvim_get_hl_by_name('Normal',     1), 'background', '#000000')
let bg_visible = get(nvim_get_hl_by_name('TabLineSel', 1), 'background', '#000000')
let bg_inactive = get(nvim_get_hl_by_name('TabLine',   1), 'background', '#000000')

" For the current active buffer
hi default link BufferCurrent      Normal
" For the current active buffer when modified
hi default link BufferCurrentMod   Normal
" For the current active buffer icon
hi default link BufferCurrentSign  Normal
" For the current active buffer target when buffer-picking
exe 'hi default BufferCurrentTarget   guifg=red gui=bold guibg=' . bg_current

" For buffers visible but not the current one
hi default link BufferVisible      TabLineSel
hi default link BufferVisibleMod   TabLineSel
hi default link BufferVisibleSign  TabLineSel
exe 'hi default BufferVisibleTarget   guifg=red gui=bold guibg=' . bg_visible

" For buffers invisible buffers
hi default link BufferInactive     TabLine
hi default link BufferInactiveMod  TabLine
hi default link BufferInactiveSign TabLine
exe 'hi default BufferInactiveTarget   guifg=red gui=bold guibg=' . bg_inactive

" For the shadow in buffer-picking mode
hi default BufferShadow guifg=#000000 guibg=#000000

hi CustomExplorerBg guibg=#181621

" augroup NvimTree 
"   au!
"   au FileType NvimTree setlocal winhighlight=Normal:CustomExplorerBg
"  augroup END
