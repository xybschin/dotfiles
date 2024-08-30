local opt = { silent = true, noremap = true }

vim.keymap.set("n", "<Up>", "<Nop>", opt)
vim.keymap.set("n", "<Down>", "<Nop>", opt)
vim.keymap.set("n", "<Left>", "<Nop>", opt)
vim.keymap.set("n", "<Right>", "<Nop>", opt)
vim.keymap.set("i", "<Up>", "<Nop>", opt)
vim.keymap.set("i", "<Down>", "<Nop>", opt)
vim.keymap.set("i", "<Left>", "<Nop>", opt)
vim.keymap.set("i", "<Right>", "<Nop>", opt)

vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", opt)

vim.keymap.set({ "n", "x" }, "j", function()
  return vim.v.count > 0 and "j" or "gj"
end, { noremap = true, expr = true })

vim.keymap.set({ "n", "x" }, "k", function()
  return vim.v.count > 0 and "k" or "gk"
end, { noremap = true, expr = true })

vim.keymap.set("n", "<leader>nb", "<cmd>Navbuddy<cr>", opt)
