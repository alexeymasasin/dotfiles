return {
    "nvimdev/dashboard-nvim",
    dependencies = {},
    config = function()
        local function default_header()
            return {
                [[]],
                [[]],
                [[]],
                [[]],
            }
        end

        require("dashboard").setup({
            theme = "doom",
            disable_move = true,
            config = {
                header = default_header(),
                center = {
                    {
                        icon = "󰙅  ",
                        icon_hl = "Title",
                        desc = "Open tree (left)",
                        desc_hl = "String",
                        key = "e",
                        keymap = "SPC +",
                        key_hl = "Number",
                        action = ":Neotree left",
                    },
                    {
                        icon = "  ",
                        icon_hl = "Title",
                        desc = "Open tree (float)",
                        desc_hl = "String",
                        key = "E",
                        keymap = "SPC +",
                        key_hl = "Number",
                        action = ":Neotree float",
                    },
                    {
                        icon = "󰈞  ",
                        icon_hl = "Title",
                        desc = "Find files",
                        desc_hl = "String",
                        key = "f f",
                        keymap = "SPC +",
                        key_hl = "Number",
                        action = ":Telescope find_files",
                    },
                    {
                        icon = "  ",
                        icon_hl = "Title",
                        desc = "Find word",
                        desc_hl = "String",
                        key = "f w",
                        keymap = "SPC +",
                        key_hl = "Number",
                        action = ":Telescope live_grep",
                    },
                    {
                        icon = "  ",
                        icon_hl = "Title",
                        desc = "Colorschemes",
                        desc_hl = "String",
                        key = "t s",
                        keymap = "SPC +",
                        key_hl = "Number",
                        action = ":Telescope colorscheme",
                    },
                },
            },
        })
    end,
}
