local keymap = vim.keymap

keymap.set("n", "<Space>tf", ":NvimTreeFindFile<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>tt", ":NvimTreeFocus<Return>", { noremap = true, silent = true })
keymap.set("n", "lg", ":FloatermNew lazygit<Return>")
