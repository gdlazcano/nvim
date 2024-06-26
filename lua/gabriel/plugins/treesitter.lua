return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "bash",
                "css",
                "html",
                "javascript",
                "json",
                "lua",
                "python",
                "rust",
                "tsx",
                "typescript",
                "go",
            },
            sync_install = false,
            highlight = {
                enable = true,
                disable = {},
            },
            indent = {
                enable = true,
                disable = {},
            },
            autotag = {
                enable = true,
                disable = {},
            },
        })
    end
}

