return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup {
      options = {
        mode = "buffers",
        separator_style = "thin",
        style_preset = "bufferline.style_preset.default",
        always_show_bufferline = false,
        diagnostics = "nvim_lsp",
      },
    }

    require("which-key").add {
      { "<leader>t", group = "Tabs" },
      { "<leader>tk", ":blast<enter>", desc = "Select last buffer", mode = "n" },
      { "<leader>tj", ":bfirst<enter>", desc = "Select first buffer", mode = "n" },
      { "<leader>th", ":bprev<enter>", desc = "Select previous buffer", mode = "n" },
      { "<leader>tl", ":bnext<enter>", desc = "Select next buffer", mode = "n" },
      { "<leader>td", ":bdelete<enter>", desc = "Delete buffer", mode = "n" },
      { "<leader>tp", "<cmd>BufferLinePick<cr>", desc = "Pick buffer", mode = "n" },
    }
  end,
}
