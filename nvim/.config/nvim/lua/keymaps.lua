local opts = { silent = true, noremap = true }

vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>", opts)
vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>", opts)
vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>", opts)
vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>", opts)
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", opts)

vim.keymap.set("n", "<c-h>", "<cmd>wincmd h<cr>", opts)
vim.keymap.set("n", "<c-l>", "<cmd>wincmd l<cr>", opts)
vim.keymap.set("n", "<c-j>", "<cmd>wincmd j<cr>", opts)
vim.keymap.set("n", "<c-k>", "<cmd>wincmd k<cr>", opts)

vim.keymap.set("n", "<leader>of", ":lua MiniFiles.open()<cr>", opts)

