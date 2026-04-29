return {
    cmd = {
        "clangd",
        "-j=8",
        "--background-index=false",
        "--header-insertion=never",
        "--pch-storage=memory",
        "--log=error"
    },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
    root_markers = {
        "compile_commands.json",
        "compile_flags.txt",
        ".git",
    },
}

