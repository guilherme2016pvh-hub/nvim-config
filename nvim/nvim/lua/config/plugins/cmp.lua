pcall(function()
    local cmp = require("cmp")

    cmp.setup({

        completion = {
            completeopt = "menu,menuone,noinsert",
        },

        window = {
            completion = {
                border = "rounded",
                winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel",
            },
            documentation = {
                border = "rounded",
            },
        },

        mapping = cmp.mapping.preset.insert({
            ["<CR>"]      = cmp.mapping.confirm({ select = true }),
            ["<Tab>"]     = cmp.mapping.select_next_item(),
            ["<S-Tab>"]   = cmp.mapping.select_prev_item(),
            ["<C-Space>"] = cmp.mapping.complete(),
        }),

        sources = {
            { name = "nvim_lsp" },
        },
    })
end)
