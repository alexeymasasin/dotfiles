return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup({
            opts = {
                ensure_installed = {
                    "eslint-lsp",
                    "tailwindcss-language-server",
                    "typescript-language-server",
                    "prettierd",
                },
            },
        })

        require("mason-lspconfig").setup({
            ensure_installed = {
                "ts_ls",
            },
        })
    end,
}
