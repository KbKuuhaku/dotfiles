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

-- return {
--     "rebelot/kanagawa.nvim",
--     priority = 1000,
--     config = function()
--         require("kanagawa").setup({
--             keywordStyle = {
--                 italic = true,
--                 bold = true,
--             },
--             typeStyle = {
--                 italic = true,
--             },
--             background = {
--                 dark = "dragon"
--             },
--             transparent = true,
--         })
--         vim.cmd("colorscheme kanagawa")
--     end
-- }

return {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
        require("rose-pine").setup({
            variant = "moon",      -- auto, main, moon, or dawn
            dark_variant = "moon", -- main, moon, or dawn
            styles = {
                transparency = true,
            },
        })

        vim.cmd("colorscheme rose-pine")
    end
}

--
-- return {
--     "ellisonleao/gruvbox.nvim",
--     priority = 1000,
--     config = function()
--         -- Default options:
--         require("gruvbox").setup({
--             terminal_colors = true, -- add neovim terminal colors
--             undercurl = true,
--             underline = true,
--             bold = true,
--             italic = {
--                 strings = true,
--                 emphasis = true,
--                 comments = true,
--                 operators = false,
--                 folds = true,
--             },
--             strikethrough = true,
--             invert_selection = false,
--             invert_signs = false,
--             invert_tabline = false,
--             inverse = true, -- invert background for search, diffs, statuslines and errors
--             contrast = "",  -- can be "hard", "soft" or empty string
--             palette_overrides = {},
--             overrides = {},
--             dim_inactive = false,
--             transparent_mode = false,
--         })
--         vim.cmd("colorscheme gruvbox")
--     end
-- }
--

-- return {
--     {
--         'lunarvim/synthwave84.nvim',
--         lazy = false,
--         priority = 1000,
--         config = function()
--             local fm = require 'synthwave84'
--
--             fm.setup {
--                 glow = {
--                     error_msg = true,
--                     type2 = true,
--                     func = true,
--                     keyword = true,
--                     operator = false,
--                     buffer_current_target = true,
--                     buffer_visible_target = true,
--                     buffer_inactive_target = true,
--                 }
--             }
--
--             vim.cmd.colorscheme 'synthwave84'
--         end
--     }
-- }
