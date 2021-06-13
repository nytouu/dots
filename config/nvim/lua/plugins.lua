---@diagnostic disable: undefined-global
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile"

return require('packer').startup(function()
    -- Packer can manage itself as an optionnal plugin
    use 'wbthomason/packer.nvim'

    -- Lua stuff
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    -- use 'onsails/lspkind-nvim'
    use 'kabouzeid/nvim-lspinstall'
    use 'hrsh7th/nvim-compe'
	-- use 'kosayoda/nvim-lightbulb'
    use 'ray-x/lsp_signature.nvim'

    -- Colors
    use 'norcalli/nvim-colorizer.lua'
    use 'folke/lsp-colors.nvim'

    -- Syntax stuff
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'sheerun/vim-polyglot'

    -- Theming
    use 'folke/tokyonight.nvim'
    use 'glepnir/dashboard-nvim'
    use 'dominikduda/vim_current_word'

    -- UI stuff
    use 'folke/lsp-trouble.nvim'
    use 'akinsho/nvim-bufferline.lua'
    use 'famiu/bufdelete.nvim'
    -- use 'romgrk/barbar.nvim'
    use { 'glepnir/galaxyline.nvim', branch = 'main' }
    use 'akinsho/nvim-toggleterm.lua'

    -- Telescope
    use 'nvim-telescope/telescope.nvim'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'
    -- use 'yamatsum/nvim-nonicons' -- would like to use this if i can figure out my fucking fonts

    -- File explorer
    use 'kyazdani42/nvim-tree.lua'

    -- Quality of life stuff
    use 'folke/which-key.nvim'
    use 'famiu/nvim-reload'
    use 'gennaro-tedesco/nvim-commaround'
    use 'windwp/nvim-autopairs'
    use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' }
    use 'karb94/neoscroll.nvim'
    use 'norcalli/snippets.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'phaazon/hop.nvim'

    -- Not useful but cool stuff
    use 'andweeb/presence.nvim'
    use 'Pocco81/TrueZen.nvim'
    -- use 'Xuyuanp/scrollbar.nvim'
    use 'dstein64/nvim-scrollview'
    use 'monaqa/dial.nvim'
end)
