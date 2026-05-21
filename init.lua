-- ====================================
-- UI / Editor
-- ====================================

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.updatetime = 250

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.numberwidth = 4
vim.opt.showmode = false
vim.opt.cmdheight = 1

-- Better UI
vim.opt.laststatus = 3
vim.opt.pumheight = 10
vim.opt.winblend = 10
vim.opt.pumblend = 10
vim.opt.mouse = "a"

-- ====================================
-- Linhas de identação
-- ====================================

vim.opt.list = true
vim.opt.listchars = {
    tab = "» ",
    leadmultispace = "· ",
    trail = "·",
    nbsp = "␣",
}

-- ====================================
-- Temas e Plugins
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

    -- Plugins
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },

    -- Autocomplete
    { src = "https://github.com/hrsh7th/nvim-cmp" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },

    -- UI
    { src = "https://github.com/nvim-tree/nvim-tree.lua" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },

})

vim.cmd("packloadall")

-- ====================================
-- Colorscheme
-- ====================================

vim.o.background = "dark"
vim.cmd("colorscheme miasma")

-- ====================================
-- nvim-tree
-- ====================================

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

        filters = {
            dotfiles = false,
        },

        git = {
            enable = true,
        },
    })

end)

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

-- ====================================
-- Auto Pairs
-- ====================================

pcall(function()

    require("nvim-autopairs").setup({})

end)

-- ====================================
-- Indent Lines
-- ====================================

pcall(function()

    require("ibl").setup({

        indent = {
            char = "│",
        },

        scope = {
            enabled = false,
        },
    })

end)

-- ====================================
-- Lualine
-- ====================================

pcall(function()

    require("lualine").setup({

        options = {
            theme = "auto",
            section_separators = "",
            component_separators = "",
        },

    })

end)

-- ====================================
-- Autocomplete
-- ====================================

pcall(function()

    local cmp = require("cmp")

    cmp.setup({

    window = {
        completion = {
            border = "rounded",
        },

        documentation = {
            border = "rounded",
        },
    },

    mapping = cmp.mapping.preset.insert({

        ["<CR>"] = cmp.mapping.confirm({
            select = true
        }),

    }),

    sources = {
        { name = "nvim_lsp" },
    },

})
end)

-- ====================================
-- LSP
-- ====================================

pcall(function()

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.config("clangd", {
        capabilities = capabilities,
    })

    vim.lsp.enable("clangd")

end)

-- ====================================
-- Keymaps
-- ====================================

vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- ====================================
-- Transparent background (optional)
-- ====================================

-- Uncomment if you want transparency
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
