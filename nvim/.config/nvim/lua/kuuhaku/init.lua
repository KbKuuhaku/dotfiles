require("kuuhaku.remap")
require("kuuhaku.set")
-- require("kuuhaku.packer")
require("kuuhaku.lazy")


-- Highlight yank
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
