local lspconfig = require('lspconfig')

require'compe'.setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = false;

    source = {
        path = true;
        buffer = true;
        calc = false;
        omni = true;
        vsnip = false;
        nvim_lsp = true;
        nvim_lua = true;
        spell = true;
        tags = false;
        snippets_nvim = false;
        treesitter = true;
    };
}

require('lspkind').init({
    -- with_text = true,
    -- symbol_map = {
    --   Text = '',
    --   Method = 'ƒ',
    --   Function = '',
    --   Constructor = '',
    --   Variable = '',
    --   Class = '',
    --   Interface = 'ﰮ',
    --   Module = '',
    --   Property = '',
    --   Unit = '',
    --   Value = '',
    --   Enum = '了',
    --   Keyword = '',
    --   Snippet = '﬌',
    --   Color = '',
    --   File = '',
    --   Folder = '',
    --   EnumMember = '',
    --   Constant = '',
    --   Struct = ''
    -- },
})

local servers = {
	-- { name = 'jedi_language_server' },
	-- { name = 'pyls_ms' },
	{ name = 'vimls' },
	{ name = 'yamlls' },
	{ name = 'html' },
	{ name = 'clangd' },
	{ name = 'bashls' },
	-- { name = 'omnisharp' },
	{ name = 'rls' },
	{ name = 'jsonls' },
	{
		name = 'sumneko_lua',
		config = {
			cmd = { "sumneko_lua" },
		}
	},
}

for _, server in ipairs(servers) do
	local config = server.config or {}
	lspconfig[server.name].setup(config)
end
