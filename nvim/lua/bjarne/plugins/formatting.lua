return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("which-key").add {
      { "<leader>Ff", "<cmd>Format current buffer<cr>", desc = "Auto Format", mode = "n" },
    }
    require("conform").setup {
      formatters_by_ft = {
        go = { "golines", "goimports" },
        cs = { "csharpier" },
        php = { "phpcbf" },
        lua = { "stylua" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        python = { "black", "isort" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
      },
    }
  end,
}
