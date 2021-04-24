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
            guifg = "#3e4451",
            guibg = "#181621"
        },
        fill = {
            guifg = "#181621",
            guibg = "#181621"
            -- guibg = "NONE"
        },
        buffer_selected = {
            guifg = "#ffffff",
            guibg = "#282c34",
            gui = "bold"
        },
        buffer_visible = {
            guifg = "#3e4451",
            guibg = "#181621"
        },
        separator_visible = {
            guifg = "#282c34",
            guibg = "#181621"
        },
        separator_selected = {
            guifg = "#181621",
            guibg = "#282c34"
        },
        separator = {
            guifg = "#3e4451",
            guibg = "#181621"
        },
        indicator_selected = {
            guifg = "#ccaaff",
            guibg = "#282c34"
        },
        modified_selected = {
            guifg = "#ffffff",
            guibg = "#282c34"
        }
    }
}
