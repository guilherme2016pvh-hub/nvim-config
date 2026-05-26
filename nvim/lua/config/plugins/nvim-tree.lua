pcall(function()
    require("nvim-tree").setup({

        view = {
            width = 30,
            relativenumber = true,
        },

        renderer = {
            group_empty = true,
            icons = {
                show = {
                    file = true,
                    folder = true,
                    folder_arrow = true,
                    git = true,
                },
            },
        },

        filters = { dotfiles = false },

        git = { enable = true },
    })
end)
