vim.g.dashboard_custom_header = {
'                                      __              ',
'                                     |  \\             ',
' _______   ______   ______  __     __ \\▓▓______ ____  ',
'|       \\ /      \\ /      \\|  \\   /  \\  \\      \\    \\ ',
'| ▓▓▓▓▓▓▓\\  ▓▓▓▓▓▓\\  ▓▓▓▓▓▓\\\\▓▓\\ /  ▓▓ ▓▓ ▓▓▓▓▓▓\\▓▓▓▓\\',
'| ▓▓  | ▓▓ ▓▓    ▓▓ ▓▓  | ▓▓ \\▓▓\\  ▓▓| ▓▓ ▓▓ | ▓▓ | ▓▓',
'| ▓▓  | ▓▓ ▓▓▓▓▓▓▓▓ ▓▓__/ ▓▓  \\▓▓ ▓▓ | ▓▓ ▓▓ | ▓▓ | ▓▓',
'| ▓▓  | ▓▓\\▓▓     \\\\▓▓    ▓▓   \\▓▓▓  | ▓▓ ▓▓ | ▓▓ | ▓▓',
' \\▓▓   \\▓▓ \\▓▓▓▓▓▓▓ \\▓▓▓▓▓▓     \\▓    \\▓▓\\▓▓  \\▓▓  \\▓▓',
'                                                      ',
} -- i know, fucking backslashes

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
    b = {description = {'  New File           '}, command = ':DashboardNewFile'},
    c = {description = {'  Recent Files       '}, command = 'Telescope oldfiles'},
    d = {description = {'  Settings           '}, command = ':e $HOME/.config/nvim/lua/settings.lua'},
    e = {description = {'  Quit               '}, command = ':q'}
}

-- vim.g.dashboard_custom_shortcut = {
--     new_file = 'SPC c n',
--     find_files = 'SPC f a',
--     oldfiles = 'SPC s l',
--     settings = 'SPC f b',
--     quit = 'SPC q'
-- }
-- find_history = 'SPC f h',

vim.g.dashboard_custom_footer = {'hello(world);'}
