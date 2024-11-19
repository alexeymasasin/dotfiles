return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
        local highlight = {
            "Gray",
        }

        local hooks = require("ibl.hooks")
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "Gray", { fg = "#494f55" })
        end)

        require("ibl").setup({
            indent = {
                highlight = highlight,
                char = "│",
            },
            exclude = {
                filetypes = {
                    "lspinfo",
                    "packer",
                    "checkhealth",
                    "help",
                    "man",
                    "dashboard",
                    "",
                },
            },
        })
    end,
}
