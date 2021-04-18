local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- Packer can manage itself as an optionnal plugin
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'kabouzeid/nvim-lspinstall'
    use 'hrsh7th/nvim-compe'

    -- Colors
    use 'norcalli/nvim-colorizer.lua'

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Theming
    use {'dracula/vim', as = 'dracula'}
    use 'romgrk/barbar.nvim'
    use { 'glepnir/galaxyline.nvim', branch = 'main' }
    use 'glepnir/dashboard-nvim'
    use 'dominikduda/vim_current_word'

    -- Telescope
    use 'nvim-telescope/telescope.nvim'

    -- Lua stuff
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'

    -- Icons
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'

    -- File explorer
    use 'kyazdani42/nvim-tree.lua'

    -- Quality of life stuff
    use 'tpope/vim-commentary'
    use 'windwp/nvim-autopairs'
    -- use 'cohama/lexima.vim'
    -- use 'tpope/vim-surround'
    use 'psliwka/vim-smoothie'
    -- use 'Yggdroot/indentLine'
    use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' }
    use 'vimlab/split-term.vim'
end)
