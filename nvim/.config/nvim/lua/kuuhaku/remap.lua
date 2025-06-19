-- Move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- Keep copied text in buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Quick fix list
vim.keymap.set("n", "<M-[>", "<cmd>cprev<CR>")
vim.keymap.set("n", "<M-]>", "<cmd>cnext<CR>")

-- Disable macro
vim.keymap.set("n", "q", "<Nop>")
