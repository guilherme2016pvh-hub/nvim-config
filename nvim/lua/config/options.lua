-- ====================================
-- Leader
-- ====================================

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

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
vim.opt.updatetime = 200

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.numberwidth = 4
vim.opt.showmode = false
vim.opt.cmdheight = 0

vim.opt.laststatus = 3
vim.opt.pumheight = 10
vim.opt.winblend = 10
vim.opt.pumblend = 10
vim.opt.mouse = "a"

vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.opt.wildmode = "longest:full,full"
vim.opt.wildoptions = "pum"

-- ====================================
-- Listchars (indentação visual)
-- ====================================

vim.opt.list = true
vim.opt.listchars = {
    tab = "» ",
    leadmultispace = "· ",
    trail = "·",
    nbsp = "␣",
}
