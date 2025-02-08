return {
    { -- Undo tree visualizer on your edit history
        "mbbill/undotree",
        keys = {
            { "<leader>u", vim.cmd.UndotreeToggle, { "n" }, }
        }
    },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },

    { -- TODO comments
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("todo-comments").setup {}
            vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope theme=dropdown previewer=false<CR>")
        end
    },

    { -- Context treesitter
        "nvim-treesitter/nvim-treesitter-context",
        config = function()
            require("treesitter-context").setup({
                multiline_threshold = 2
            })
        end
    },

    { -- Markdown preview
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    {
        "ray-x/lsp_signature.nvim",
    }

}
