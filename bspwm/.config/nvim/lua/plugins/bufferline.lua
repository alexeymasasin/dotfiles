return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local bufferline = require("bufferline")
        require("bufferline").setup({
            options = {
                buffer_close_icon = "󰅖",
                mode = "buffers",
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "[~ archlinux]",
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
                indicator = {
                    icon = "",
                    style = "underline",
                    buffer_close_icon = "󰅖",
                    modified_icon = "● ",
                    close_icon = " ",
                    left_trunc_marker = " ",
                    right_trunc_marker = " ",
                },
                -- separator_style = "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
                style_preset = {
                    bufferline.style_preset.no_italic,
                    bufferline.style_preset.no_bold,
                },
            },
        })
    end,
}
