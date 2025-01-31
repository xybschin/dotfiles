require("conform").setup {
  formatters_by_ft = {
    cs = { "csharpier" },
    lua = { "stylua" },
    python = { "black", "isort" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
  },
}
