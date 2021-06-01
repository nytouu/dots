require('bufferline').setup{
	options = {
		buffer_close_icon = "",
        modified_icon = "●",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 18,
        enforce_regular_tabs = true,
        view = "default",
        show_buffer_close_icons = true,
		show_close_icon = false,
        separator_style = "thin"
    },
    highlights = {
        background = {
            guifg = "#414868",
            guibg = "#1d202f"
        },
        fill = {
            guifg = "#414868",
            guibg = "#1d202f"
            -- guibg = "NONE"
        },
        buffer_selected = {
            guifg = "#c0caf5",
            guibg = "#24283b",
            gui = "bold"
        },
        buffer_visible = {
            guifg = "#414868",
            guibg = "#1d202f"
        },
        separator_visible = {
            guifg = "#24283b",
            guibg = "#1d202f"
        },
        separator_selected = {
            guifg = "#1d202f",
            guibg = "#24283b"
        },
        separator = {
            guifg = "#414868",
            guibg = "#1d202f"
        },
        indicator_selected = {
            guifg = "#7aa2f7",
            guibg = "#24283b"
        },
        modified = {
            guifg = "#414868",
            guibg = "#1d202f"
        },
        modified_selected = {
            guifg = "#c0caf5",
            guibg = "#24283b"
        },
        modified_visible = {
            guifg = "#c0caf5",
            guibg = "#1d202f"
        }
    }
}
