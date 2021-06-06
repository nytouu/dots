-- TODO colors not strong enough

require'gitsigns'.setup{
    debug_mode = false,
    signs = {
        add = {hl = "GitGutterAdd", text = "▌"},
        change = {hl = "GitGutterChange", text = "▌"},
        delete = {hl = "GitGutterDelete", text = "▌"},
        topdelete = {hl = "GitGutterDelete", text = "▌"},
        changedelete = {hl = "GitGutterChange", text = "▌"}
    },
    numhl = false
}
