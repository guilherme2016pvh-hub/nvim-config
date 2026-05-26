pcall(function()
    require("noice").setup({

        cmdline = {
            enabled = true,
            view = "cmdline_popup",
            format = {
                cmdline     = { icon = "󰮯 " },
                search_down = { icon = " ↓" },
                search_up   = { icon = " ↑" },
                filter      = { icon = "$" },
                lua         = { icon = "" },
                help        = { icon = "?" },
            },
        },

        views = {
            cmdline_popup = {
                position = {
                    row = "30%",
                    col = "50%",
                },
                size = {
                    width  = 80,
                    height = "auto",
                },
                border = {
                    style = "rounded",
                    padding = { 0, 1 },
                },
            },
        },

        messages  = { enabled = true },
        popupmenu = { enabled = true, backend = "nui" },
        notify    = { enabled = true, view = "notify" },

        presets = {
            bottom_search        = false,
            command_palette      = true,
            long_message_to_split = true,
            inc_rename           = false,
            lsp_doc_border       = true,
        },
    })
end)
