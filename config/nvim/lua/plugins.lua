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
    use 'folke/lsp-trouble.nvim'
    use 'ray-x/lsp_signature.nvim'

    -- Colors
    use 'norcalli/nvim-colorizer.lua'
    use 'folke/lsp-colors.nvim'

    -- Syntax stuff
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'sheerun/vim-polyglot'

    -- Theming
    use 'folke/tokyonight.nvim'
    -- use 'marko-cerovac/material.nvim'
    -- use 'romgrk/barbar.nvim'
    use { 'akinsho/nvim-bufferline.lua' }
    use { 'glepnir/galaxyline.nvim', branch = 'main' }
    use 'glepnir/dashboard-nvim'
    use 'dominikduda/vim_current_word'

    -- Telescope
    use 'nvim-telescope/telescope.nvim'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'
    -- use 'yamatsum/nvim-nonicons' -- would like to use this if i can figure out my fucking fonts

    -- File explorer
    use 'kyazdani42/nvim-tree.lua'

    -- Quality of life stuff
    use 'famiu/nvim-reload'
    use 'tpope/vim-commentary'
    use 'windwp/nvim-autopairs'
    use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' }
    use 'akinsho/nvim-toggleterm.lua'
    use 'karb94/neoscroll.nvim'
    use 'norcalli/snippets.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'famiu/bufdelete.nvim'
    use 'phaazon/hop.nvim'

    -- Not useful but cool stuff
    use 'andweeb/presence.nvim'
    use 'Pocco81/TrueZen.nvim'
    -- use 'Xuyuanp/scrollbar.nvim'
    use 'monaqa/dial.nvim'
end)
