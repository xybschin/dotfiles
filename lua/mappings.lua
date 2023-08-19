local keymap = vim.keymap

-- Hover
keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })

-- ALE
keymap.set("n", "<Space>af", ":ALEFix<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>al", ":ALELint<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>an", ":ALENext<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>ap", ":ALEPrevious<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>ah", ":ALEHover<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>ad", ":ALEDetail<Return>", { noremap = true, silent = true })

-- Telescope
keymap.set("n", "<Space>ff", ":Telescope find_files<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>fg", ":Telescope live_grep<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>fb", ":Telescope buffers<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>fh", ":Telescope help_tags<Return>", { noremap = true, silent = true })

-- Floaterm
keymap.set("n", "<Space>lg", ":FloatermNew --width=0.9 --height=0.9 lazygit<Return>")
keymap.set("n", "<Space>ld", ":FloatermNew --width=0.9 --height=0.9 lazydocker<Return>")
keymap.set("n", "<Space>lt", ":FloatermToggle<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>lq", ":FloatermKill<Return>", { noremap = true, silent = true })

-- Documentation
keymap.set("n", "<Space>dt", ":DocsViewToggle<Return>", { noremap = true, silent = true })

keymap.set("n", "<Space>tf", ":NvimTreeFocus<Return>", { noremap = true, silent = true })
keymap.set("n", "<Space>tt", ":NvimTreeToggle<Return>", { noremap = true, silent = true })
