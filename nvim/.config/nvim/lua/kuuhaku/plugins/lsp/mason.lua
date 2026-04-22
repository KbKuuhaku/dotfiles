return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            -- "clangd",
            -- "cssls",
            -- "html",
            "lua_ls",
            "marksman",
            "ty",
            "ruff",
            "rust_analyzer",
            "texlab",
            "pbls",
            "docker_language_server",
            -- "vtsls"
        }
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
