-- ====================================
-- Plugins (vim.pack)
-- ====================================

vim.pack.add({

    -- Temas
    { src = "https://github.com/everviolet/nvim.git" },
    { src = "https://github.com/morhetz/gruvbox.git" },
    { src = "https://github.com/rockerBOO/boo-colorscheme-nvim.git" },
    { src = "https://github.com/kdheepak/monochrome.nvim.git" },
    { src = "https://github.com/thesimonho/kanagawa-paper.nvim.git" },
    { src = "https://github.com/shaunsingh/nord.nvim.git" },
    { src = "https://github.com/xero/miasma.nvim.git" },
    { src = "https://github.com/folke/tokyonight.nvim.git" },

    -- Plugins
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },

    -- Completion
    { src = "https://github.com/hrsh7th/nvim-cmp" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },

    -- UI
    { src = "https://github.com/nvim-tree/nvim-tree.lua" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },

    -- Command palette
    { src = "https://github.com/folke/noice.nvim" },
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/rcarriga/nvim-notify" },
})

vim.cmd("packloadall")

-- ====================================
-- Colorscheme
-- ====================================

vim.o.background = "dark"
vim.cmd("colorscheme tokyonight-moon")

-- ====================================
-- Configuração dos plugins
-- ====================================

require("config.plugins.notify")
require("config.plugins.noice")
require("config.plugins.nvim-tree")
require("config.plugins.autopairs")
require("config.plugins.ibl")
require("config.plugins.lualine")
require("config.plugins.cmp")
require("config.plugins.lsp")
