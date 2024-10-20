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
  end,
}
