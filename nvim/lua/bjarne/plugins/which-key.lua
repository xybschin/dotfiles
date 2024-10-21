return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = true,
  config = function()
    local wk = require "which-key"
    wk.add {
      { "<leader>F", group = "File" },
      { "<leader>Fw", "<cmd>w<cr>", desc = "Save current buffer", mode = "n" },
      { "<leader>Fn", "<cmd>Navbuddy<cr>", desc = "Open Navbuddy", mode = "n" },
      { "<leader>D", group = "Diagnostic" },
      { "<leader>Dn", vim.diagnostic.goto_next, desc = "Diagnostic Next", mode = "n" },
      { "<leader>Dp", vim.diagnostic.goto_prev, desc = "Diagnostic Previous", mode = "n" },
      {
        "<Leader>Df",
        '<cmd>:lua vim.diagnostic.open_float(0, {scope="line"})<CR>',
        desc = "Diagnostic Float",
        mode = "n",
      },
    }
  end,
}
