"auto-install vim-plug
if empty(glob('~/.config/nvim/plugged'))
    silent !sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs
            \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source '~/.config/nvim/init.vim'
endif

call plug#begin()

Plug 'junegunn/vim-plug'

Plug 'dracula/vim',{'as':'dracula'}
" Plug 'ghifarit53/tokyonight-vim'

Plug 'itchyny/lightline.vim'
" Plug 'glepnir/galaxyline.nvim'
Plug 'jiangmiao/auto-pairs'
" Plug 'junegunn/fzf'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'dominikduda/vim_current_word'
" Plug 'nvim-treesitter/nvim-treesitter'
Plug 'vimlab/split-term.vim'
Plug 'romgrk/barbar.nvim'
" Plug 'psliwka/vim-smoothie'
Plug 'kyazdani42/nvim-tree.lua'
" Plug 'moll/vim-bbye'
" Plug 'liuchengxu/vim-which-key'
" Plug 'mhinz/vim-startify'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'airblade/vim-rooter'
Plug 'justinmk/vim-sneak'
Plug 'glepnir/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'kyazdani42/nvim-web-devicons' "

" MOST IMPORTANTLY :
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
" Plug 'nvim-lua/completion-nvim'

call plug#end()
