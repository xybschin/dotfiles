local opt = { silent = true, noremap = true }

vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>qa<cr>", opt)
vim.api.nvim_set_keymap("n", "<leader>x", "<cmd>x!<cr>", opt)
vim.api.nvim_set_keymap("i", "<c-s>", "<esc><cmd>w<cr>a", opt)
vim.api.nvim_set_keymap("n", "<leader>w", "<cmd>w<cr>", opt)
vim.api.nvim_set_keymap("n", "<a-h>", "<c-w>h", opt)
vim.api.nvim_set_keymap("n", "<a-j>", "<c-w>j", opt)
vim.api.nvim_set_keymap("n", "<a-k>", "<c-w>k", opt)
vim.api.nvim_set_keymap("n", "<a-l>", "<c-w>l", opt)
vim.api.nvim_set_keymap("n", "<a-,>", "<cmd>tabprevious<cr>", opt)
vim.api.nvim_set_keymap("n", "<a-.>", "<cmd>tabnext<cr>", opt)
vim.api.nvim_set_keymap("t", "<c-q>", "<c-\\><c-n>", opt)
