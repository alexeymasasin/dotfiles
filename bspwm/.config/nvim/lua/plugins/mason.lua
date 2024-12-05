return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup({
                opts = {
                    ensure_installed = {
                        "eslint-lsp",
                        "tailwindcss-language-server",
                        "typescript-language-server",
                        "prettierd",
                        "css-lsp",
                    },
                },
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
            ensure_installed = {
                "ts_ls",
            },
        },
    },
}
