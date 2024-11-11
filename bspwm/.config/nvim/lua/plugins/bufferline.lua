return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local bufferline = require("bufferline")
        require("bufferline").setup({
            options = {
                buffer_close_icon = "󰅖",
                themable = true,
                numbers = "ordinal",
                mode = "buffers",
                tab_size = 20,
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "[~ neo-tree]",
                        separator = true,
                        padding = 0,
                    },
                },
                color_icons = false,
                diagnostics = "nvim_lsp",
                hover = {
                    enabled = true,
                    delay = 100,
                    reveal = { "close" },
                },
                -- separator_style = "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
                separator_style = "thick",
                style_preset = {
                    bufferline.style_preset.no_italic,
                    bufferline.style_preset.no_bold,
                },
            },
        })
    end,
}
