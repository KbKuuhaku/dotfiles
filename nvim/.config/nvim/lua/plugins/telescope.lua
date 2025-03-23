local M = {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    }
}

function M.config()
    local ts = require("telescope")
    ts.setup({
        defaults = {
            -- Default configuration for telescope goes here:
            -- config_key = value,
            mappings = {
                i = {
                    -- map actions.which_key to <C-h> (default: <C-/>)
                    -- actions.which_key shows the mappings for your picker,
                    -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                    ["<C-k>"] = "move_selection_previous",
                    ["<C-j>"] = "move_selection_next",
                }
            },
        },
        pickers = {
            -- Default configuration for builtin pickers goes here:
            -- picker_name = {
            --   picker_config_key = value,
            --   ...
            -- }
            -- Now the picker_config_key will be applied every time you call this
            -- builtin picker
            find_files = {
                previewer = false,
                theme = "dropdown",
                follow = true, -- allow it to follow symlinks
                hidden = true,
            },
            buffers = {
                previewer = false,
                theme = "dropdown",
            },
            live_grep = {
                previewer = false,
                theme = "dropdown"
            },
            git_files = {
                previewer = false,
                theme = "dropdown"
            }
        },
        extensions = {
            -- Your extension configuration goes here:
            -- extension_name = {
            --   extension_config_key = value,
            -- }
            -- please take a look at the readme of the extension you want to configure
            fzf = {},
        },
    })
    -- To get fzf loaded and working with telescope, you need to call
    -- load_extension, somewhere after setup function:
    ts.load_extension('fzf')
end

M.keys = {
    { "<leader>ff", "<cmd>Telescope find_files<CR>", { "n" }, },
    { "<leader>fb", "<cmd>Telescope buffers<CR>",    { "n" }, },
    { "<leader>fw", "<cmd>Telescope live_grep<CR>",  { "n" }, },
    { "<leader>fg", "<cmd>Telescope git_files<CR>",  { "n" }, },
    { "<leader>fh", "<cmd>Telescope help_tags<CR>",  { "n" }, },
}

return M
