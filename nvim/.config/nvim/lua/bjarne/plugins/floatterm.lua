return {
  "voldikss/vim-floaterm",
  config = function()
    local wk = require "which-key"

    wk.add {
      { "<leader>T", group = "Terminal" },
      { "<leader>Tt", ":FloatermToggle<CR>", desc = "Toggle terminal" },
      { "<leader>Tn", ":FloatermNext<CR>", desc = "Next terminal" },
      { "<leader>Tp", ":FloatermPrev<CR>", desc = "Previous terminal" },
      { "<leader>Th", ":FloatermHide<CR>", desc = "Hide terminal" },
      { "<leader>Ts", ":FloatermShow<CR>", desc = "Show terminal" },
      { "<leader>Tk", ":FloatermKill<CR>", desc = "Kill terminal" },
      { "<leader>Tf", ":FloatermNew --width=0.9 --height=0.9<CR>", desc = "Open floating terminal" },
      { "<Esc>", [[<C-\><C-n>]], mode = "t" },
    }
  end,
}
