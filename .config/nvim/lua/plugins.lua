---@diagnostic disable: undefined-global
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

    -- Lua stuff
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'kabouzeid/nvim-lspinstall'
    use 'hrsh7th/nvim-compe'
	use 'kosayoda/nvim-lightbulb'

    -- Colors
    use 'norcalli/nvim-colorizer.lua'

    -- Syntax stuff
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'sheerun/vim-polyglot'

    -- Theming
    use {'dracula/vim', as = 'dracula'}
    use 'romgrk/barbar.nvim'
    use { 'glepnir/galaxyline.nvim', branch = 'main' }
    use 'glepnir/dashboard-nvim'
    use 'dominikduda/vim_current_word'

    -- Telescope
    use 'nvim-telescope/telescope.nvim'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'

    -- File explorer
    use 'kyazdani42/nvim-tree.lua'

    -- Quality of life stuff
    use 'glepnir/prodoc.nvim'
    use 'windwp/nvim-autopairs'
    use 'tpope/vim-surround'
    use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' }
    use 'vimlab/split-term.vim'
	use 'karb94/neoscroll.nvim'
-- 	use 'mfussenegger/nvim-dap'
-- 	use 'rcarriga/nvim-dap-ui'
end)
