local keymap = vim.keymap

keymap.set("n", "<Space>pr", ":FloatermNew --wintype='split' --widht=0.3 pnpm run")
keymap.set("n", "<Space>pi", ":FloatermNew pnpm i<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>tf", ":NvimTreeFindFile<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>tt", ":NvimTreeFocus<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>lg", ":FloatermNew lazygit<Return>")
keymap.set("n", "<Space>ld", ":FloatermNew lazydocker<Return>")
