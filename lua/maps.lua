local keymap = vim.keymap

keymap.set("n", "K", require("hover").hover, {desc = "hover.nvim"})
keymap.set("n", "gK", require("hover").hover_select, {desc = "hover.nvim (select)"})
keymap.set("n", "<Space>ff", ":ALEFix<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>lf", ":ALELint<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>fi", ":Telescope find_files<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>fg", ":Telescope live_grep<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>pr", ":FloatermNew --wintype='split' --widht=0.3 pnpm run")
keymap.set("n", "<Space>pi", ":FloatermNew pnpm i<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>tf", ":NvimTreeFindFile<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>tt", ":NvimTreeFocus<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>lg", ":FloatermNew lazygit<Return>")
keymap.set("n", "<Space>ld", ":FloatermNew lazydocker<Return>")
