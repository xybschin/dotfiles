return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      go = { "golines", "goimports" },
      cs = { "csharpier" },
      php = { "phpcbf" },
      lua = { "stylua" },
      c = { "clang-format" },
      cpp = { "clang-format" },
    },
    format_on_save = {
      lsp_fallback = true,
      async = false,
    },
  },
}
