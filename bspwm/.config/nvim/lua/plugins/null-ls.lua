return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {},
    config = function()
        local null_ls = require("null-ls")
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.eslint_d.with({
                    filetypes = {
                        "typescript",
                        "javascript",
                        "typescriptreact",
                        "javascriptreact",
                    },
                }),
                null_ls.builtins.diagnostics.eslint_d,
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.diagnostics.ltrs,
                null_ls.builtins.formatting.prettierd.with({
                    filetypes = {
                        "css",
                        "scss",
                        "less",
                        "html",
                        "json",
                        "jsonc",
                        "yaml",
                        "markdown",
                        "markdown.mdx",
                        "graphql",
                        "handlebars",
                    },
                }),
            },
            on_attach = function(client, bufnr)
                -- Enable formatting on sync
                if client.supports_method("textDocument/formatting") then
                    local format_on_save = vim.api.nvim_create_augroup("LspFormatting", { clear = true })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = format_on_save,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({
                                bufnr = bufnr,
                                filter = function(_client)
                                    return client.name == "null-ls"
                                end,
                            })
                        end,
                    })
                end
            end,
        })
    end,
}
