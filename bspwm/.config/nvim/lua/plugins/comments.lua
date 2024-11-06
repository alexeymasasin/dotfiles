return {
    "terrortylor/nvim-comment",
    dependencies = {},
    config = function()
        require("nvim_comment").setup({
            -- line_mapping = "<leader>/", -- comment a single line
            operator_mapping = "<leader>c", -- comment multiple lines
        })
    end,
}
