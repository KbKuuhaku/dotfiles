vim.g.mapleader = " " -- leader key

vim.opt.showcmd = true

vim.opt.guicursor = "n-v-i-c:block-Cursor" -- block type
vim.opt.cursorline = true

vim.opt.nu = true
vim.opt.relativenumber = true

-- Indent
vim.opt.tabstop = 4 -- tab with 4 spaces
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Highlight search
vim.opt.hlsearch = true
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")

vim.opt.incsearch = true

-- True color
vim.opt.termguicolors = true

-- Code folding
vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99   -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true


vim.opt.scrolloff = 10

vim.opt.updatetime = 50
vim.opt.colorcolumn = "100"

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = 'unnamedplus'
