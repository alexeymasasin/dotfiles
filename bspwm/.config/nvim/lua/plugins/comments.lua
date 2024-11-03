return {
    'terrortylor/nvim-comment',
    dependencies = {
    },
    config = function()
        require('nvim_comment').setup({
        line_mapping = "<leader>/",
    })
    end
}
