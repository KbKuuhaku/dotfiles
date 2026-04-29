return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = "master",
    config = function()
        require("nvim-treesitter.configs").setup {
            -- A list of parser names, or "all" (the five listed parsers should always be installed)
            ensure_installed = {
                "c",
                "cpp",
                "lua",
                "python",
                "vim",
                "vimdoc",
                "query",
                "yaml",
                "bash",
                "html",
                "css",
                "rust",
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            auto_install = false,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,

				disable = function(lang, buf)
					local max_filesize = 100 * 1024 -- 100 KB
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > max_filesize then
						return true
					end
				end,

                disable = { "dockerfile" },
            },

            indent = {
                enable = true,
                disable = { "c", "cpp" },
            }
        }
    end
}
