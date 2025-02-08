-- return {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("catppuccin").setup({
--             flavour = "mocha",
--         })
--         vim.cmd("colorscheme catppuccin")
--     end
-- }

return {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
        require("kanagawa").setup({
            keywordStyle = {
                italic = true,
                bold = true,
            },
            typeStyle = {
                italic = true,
            },
            background = {
                dark = "dragon"
            },
            transparent = true,
        })
        vim.cmd("colorscheme kanagawa")
    end
}
