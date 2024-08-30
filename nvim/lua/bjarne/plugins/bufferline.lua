local map = vim.api.nvim_set_keymap

local opts = { silent = true, nowait = true, noremap = true }
map("n", "gb", "<cmd>BufferLinePick<cr>", opts)
map("n", "<leader>d", "<cmd>bdelete!<cr>", opts)

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup {
      options = {
        mode = "buffers",
        separator_style = "thin",
        style_preset = "bufferline.style_preset.minimal",
        always_show_bufferline = false,
        diagnostics = "nvim_lsp",
        tab_size = 10,
      },
    }
  end,
}
