nnoremap <silent>    <S-j> :BufferNext<CR>
nnoremap <silent>    <S-k> :BufferPrevious<CR>
nnoremap <silent>    <A-c> :BufferClose<CR>

nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>

nnoremap <silent> <C-p> :Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-n> :Lspsaga diagnostic_jump_next<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Indent/Unindent more easily
nnoremap <silent> <M-h> <<
nnoremap <silent> <M-l> >>
" Move lines up or down
nnoremap <silent> <M-k> :move-2<CR>
nnoremap <silent> <M-j> :move+<CR>
" Use tab for completion
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <A-e> :NvimTreeToggle<CR>
nnoremap <A-d> :Dashboard<CR>
nnoremap <A-f> :DashboardFindFile<CR>
nnoremap <silent> <C-s> :w<CR>

nnoremap <silent> <C-Up>    :resize -1<CR>
nnoremap <silent> <C-Down>  :resize +1<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>
