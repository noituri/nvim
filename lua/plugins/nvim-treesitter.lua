return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        vim.filetype.add({extension = {wgsl = "wgsl"}})

        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "lua",
                "rust",
                "c",
                "cpp",
                "cmake",
                "css",
                "csv",
                "dart",
                "diff",
                "dockerfile",
                "elixir",
                "erlang",
                "gitignore",
                "glsl",
                "go",
                "html",
                "java",
                "javascript",
                "json",
                "latex",
                "llvm",
                "make",
                "python",
                "sql",
                "svelte",
                "tsx",
                "toml",
                "typescript",
                "wgsl",
                "zig",
                "yaml"
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
