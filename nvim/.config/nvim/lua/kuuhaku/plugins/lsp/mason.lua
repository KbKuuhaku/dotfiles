return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "gopls",
            "clangd",
            "cssls",
            "gopls",
            "html",
            "lua_ls",
            "marksman",
            "ty",
            "ruff",
            "rust_analyzer",
            "texlab",
            "vtsls"
        }
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
