return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "saghen/blink.cmp",
    },

    config = function()
        local lsp_config = require("lspconfig")
        -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local capabilities = require("blink.cmp").get_lsp_capabilities()
        local util = require("lspconfig/util")


        local on_attach = function(_, buffer)
            local opts = {
                buffer = buffer, -- only live in current buffer (file)
                remap = false
            }

            -- Remap
            -- LSP
            vim.keymap.set("n", "<leader>q", vim.diagnostic.setqflist, opts)
            vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
            vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        end

        local servers = {
            ["lua_ls"] = {
                settings = {
                    Lua = {
                        runtime = {
                            -- Tell the language server which version of Lua you're using
                            -- (most likely LuaJIT in the case of Neovim)
                            version = "LuaJIT",
                        },
                        diagnostics = {
                            -- Get the language server to recognize the `vim` global
                            globals = {
                                "vim",
                                "require"
                            },
                        }
                    },
                },
            },
            ["ruff"] = {
                cmd = { "ruff", "server" },
                filetypes = { "python" },
                root_dir = util.find_git_ancestor,
                single_file_support = true
            },
            ["pyright"] = {
                settings = {
                    python = {
                        analysis = {
                            autoSearchPaths = true,
                            diagnosticMode = "openFilesOnly",
                            useLibraryCodeForTypes = true,
                        }
                    }
                }
            },
            ["rust_analyzer"] = {
                settings = {
                    ["rust-analyzer"] = {
                        cargo = {
                            allFeatures = true
                        }
                    }
                }
            },
            ["cmake"] = {},
            ["clangd"] = {},
            ["marksman"] = {},
            ["csharp_ls"] = {},
            ["texlab"] = {
                cmd = { "texlab" },
                filetypes = { "tex", "plaintex", "bib" },
                root_markers = {
                    ".git", ".latexmkrc", "latexmkrc", ".texlabroot", "texlabroot", "Tectonic.toml"
                },
                settings = {
                    texlab = {
                        bibtexFormatter = "texlab",
                        build = {
                            args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
                            executable = "latexmk",
                            forwardSearchAfter = false,
                            onSave = false
                        },
                        chktex = {
                            onEdit = false,
                            onOpenAndSave = false
                        },
                        diagnosticsDelay = 300,
                        formatterLineLength = 80,
                        forwardSearch = {
                            args = {}
                        },
                        latexFormatter = "latexindent",
                        latexindent = {
                            modifyLineBreaks = false
                        }
                    }
                }
            }
            -- and more
        }
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = vim.tbl_keys(servers)
        })

        -- Set up servers
        for server_name, config in pairs(servers) do
            config["on_attach"] = on_attach
            config["capabilities"] = capabilities
            lsp_config[server_name].setup(config)
        end

        local _config = {}
        _config["on_attach"] = on_attach
        _config["capabilities"] = capabilities
        lsp_config["gdscript"].setup(_config)
    end
}
