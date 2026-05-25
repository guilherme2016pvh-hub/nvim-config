pcall(function()
    vim.notify = require("notify")

    require("notify").setup({
        background_colour = "#000000",
        fps = 60,
        render = "default",
        timeout = 3000,
    })
end)
