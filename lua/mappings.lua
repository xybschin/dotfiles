local keymap = vim.keymap
local options = { noremap = true, silent = true }

keymap.set('n', '<space>e', vim.diagnostic.open_float)
keymap.set('n', '[d', vim.diagnostic.goto_prev)
keymap.set('n', ']d', vim.diagnostic.goto_next)
keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Telescope
keymap.set("n", "<Space>ff", ":Telescope find_files<Return>", options)
keymap.set("n", "<Space>fg", ":Telescope live_grep<Return>", options)
keymap.set("n", "<Space>fb", ":Telescope buffers<Return>", options)
keymap.set("n", "<Space>fh", ":Telescope help_tags<Return>", options)

-- Open lazydocker and lazygit in a floating terminal
keymap.set("n", "<Space>lg", ":FloatermNew --width=0.9 --height=0.9 lazygit<Return>")
keymap.set("n", "<Space>ld", ":FloatermNew --width=0.9 --height=0.9 lazydocker<Return>")

-- NvimTree
keymap.set("n", "<Space>tf", ":NvimTreeFocus<Return>", options)
keymap.set("n", "<Space>tt", ":NvimTreeToggle<Return>", options)

-- DAP Debugging
keymap.set("n", "<Space><F5>", ":lua require('dap').continue()<Return>", options)
keymap.set("n", "<Space><F6>", ":lua require('dap').run_to_cursor()<Return>", options)
keymap.set("n", "<Space><F7>", ":lua require('dap').close()<Return>", options)
keymap.set("n", "<Space><F10>", ":lua require('dap').step_over()<Return>", options)
keymap.set("n", "<Space><F11>", ":lua require('dap').step_into()<Return>", options)
keymap.set("n", "<Space><F12>", ":lua require('dap').step_out()<Return>", options)
keymap.set("n", "<Space>b", ":lua require('dap').toggle_breakpoint()<Return>", options)
keymap.set("n", "<Space>B", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<Return>", options)
keymap.set("n", "<Space>lp", ":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<Return>", options)
keymap.set("n", "<Space>dr", ":lua require('dap').repl.open()<Return>", options)
keymap.set("n", "<Space>dl", ":lua require('dap').run_last()<Return>", options)

