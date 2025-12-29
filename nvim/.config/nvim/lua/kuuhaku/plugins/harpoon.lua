local M = {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
    }
}

-- Improved version of vim mark
-- Harpoon marks will always exist per project, even if you reopen the project later
-- Remove them in quick menu if needed, <leader>a to add/update
function M.config()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<leader>fp", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<M-o>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<M-i>", function() harpoon:list():next() end)

    -- Quickly jump between four frequently used marks
    vim.keymap.set("n", "<M-1>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<M-2>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<M-3>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<M-4>", function() harpoon:list():select(4) end)
end

return M
