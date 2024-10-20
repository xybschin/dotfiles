local opt = { silent = true, noremap = true }

vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>", opt)
vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>", opt)
vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>", opt)
vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>", opt)
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", opt)

vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", opt)
vim.keymap.set("n", "<leader>nb", "<cmd>Navbuddy<cr>", opt)

vim.keymap.set("n", "tk", ":blast<enter>", opt)
vim.keymap.set("n", "tj", ":bfirst<enter>", opt)
vim.keymap.set("n", "th", ":bprev<enter>", opt)
vim.keymap.set("n", "tl", ":bnext<enter>", opt)
vim.keymap.set("n", "td", ":bdelete<enter>", opt)
vim.keymap.set("n", "tp", "<cmd>BufferLinePick<cr>", opt)

vim.keymap.set({ "n", "v" }, "dn", vim.diagnostic.goto_next, opt)
vim.keymap.set({ "n", "v" }, "dp", vim.diagnostic.goto_prev, opt)
