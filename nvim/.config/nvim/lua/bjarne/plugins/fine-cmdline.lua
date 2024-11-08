return {
  "VonHeikemen/fine-cmdline.nvim",
  dependencies = {
    { "MunifTanjim/nui.nvim" },
  },
  init = function()
    vim.api.nvim_set_keymap("n", "<CR>", "<cmd>FineCmdline<CR>", { noremap = true })
    vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
  end,
}
