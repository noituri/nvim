return {
    "gennaro-tedesco/nvim-possession",
    dependencies = {
        "ibhagwan/fzf-lua",
    },
    config = function()
        local config = {}

        config.sessions = {
            sessions_path = vim.fn.stdpath("data") .. "/sessions/",
            sessions_variable = "session",
            sessions_icon = "📌",
            sessions_prompt = "sessions:",
        }

        config.autoload = false
        config.autosave = true
        config.autoswitch = {
            enable = false,
            exclude_ft = {},
        }

        config.save_hook = function()
            vim.cmd("Neotree close")
        end
        config.post_hook = function()
            vim.cmd("Neotree filesystem reveal left")
        end

        config.fzf_winopts = {
            hl = { normal = "Normal" },
            border = "rounded",
            height = 0.5,
            width = 0.25,
            preview = {
                horizontal = "down:40%",
            },
        }

        require("nvim-possession").setup(config)
    end,
    init = function()
        local possession = require("nvim-possession")
        vim.keymap.set("n", "<leader>sl", function()
            possession.list()
        end)
        vim.keymap.set("n", "<leader>sn", function()
            possession.new()
        end)
        vim.keymap.set("n", "<leader>su", function()
            possession.update()
        end)
        vim.keymap.set("n", "<leader>sd", function()
            possession.delete()
        end)
    end,
}
