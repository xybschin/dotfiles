local options = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>ff", "<cmd>FormatLock<cr>", options)
vim.keymap.set("n", "<leader>F", "<cmd>FormatWriteLock<cr>", options)

require("formatter").setup({
  logging = true,
  fileType = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettierd,
      require("formatter.filetypes.javascript").eslint_d,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettierd,
      require("formatter.filetypes.typescript").eslint_d,
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettierd,
      require("formatter.filetypes.javascriptreact").eslint_d,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettierd,
      require("formatter.filetypes.typescriptreact").eslint_d,

    },

    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any filetype
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
})
