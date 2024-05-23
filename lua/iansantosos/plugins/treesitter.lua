return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    options = {
        ensure_installed = {
            "lua",
            "javascript",
            "typescript",
            "html",
            "css",
            "python",
            "yaml",
            "dockerfile",
            "markdown",
            "markdown_inline",
        },
        sync_install = false,
        auto_install = true,
        indent = { enable = true },
        highlight = { enable = true },
    }
}
