return {
    "stevearc/conform.nvim",
    dependencies = {
    },
    config = function()
        require("conform").setup({
  formatters_by_ft = {
    javascript = { { 'prettierd', "prettier" } },
    javascriptreact = { { 'prettierd', "prettier" } },
    typescript = { { 'prettierd', "prettier" } },
    typescriptreact = { { 'prettierd', "prettier" } },
    javascriptreact = { { 'prettierd', "prettier" } },
    json = { { 'prettierd', "prettier" } },
    html = { { 'prettierd', "prettier" } },
    css = { { 'prettierd', "prettier" } },
  },
    format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500
    },
})
    end
}
