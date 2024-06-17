return {
  "voldikss/vim-floaterm",
  config = function()
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap("n", "<leader>tt", ":FloatermToggle<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>tk", ":FloatermKill<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>tf", ":FloatermNew --width=0.9 --height=0.9<CR>", opts)
    vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], opts)
  end,
}
