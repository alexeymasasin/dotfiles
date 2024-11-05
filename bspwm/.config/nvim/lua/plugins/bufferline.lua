return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
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
                diagnostics = "nvim_lsp",
                indicator = {
                    icon = "  ", -- this should be omitted if indicator style is not 'icon'
                    style = "icon",
                },
                -- separator_style = "slope",
            },
        })
    end,
}
