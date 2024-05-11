return {
    "gelguy/wilder.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local wilder = require"wilder"
        wilder.setup { modes = { ":", "/", "?" } }
        wilder.set_option('renderer', wilder.popupmenu_renderer(
            wilder.popupmenu_border_theme({
                highlighter = wilder.basic_highlighter(),
                left = {
                    " ",
                    wilder.popupmenu_devicons(),
                    wilder.popupmenu_buffer_flags {
                        flags = " a + ",
                        icons = { ["+"] = "", a = "", h = "" },
                    },
                },
                highlights = {
                    border = 'Normal',
                },
                border = 'rounded',
            })
        ))
    end,
}