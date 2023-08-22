local keymap = vim.keymap
local options = { noremap = true, silent = true }

keymap.set("n", "<space>e", vim.diagnostic.open_float)
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "<space>q", vim.diagnostic.setloclist)

-- Telescope
keymap.set("n", "<space>ff", ":Telescope find_files<Return>", options)
keymap.set("n", "<space>fg", ":Telescope live_grep<Return>", options)
keymap.set("n", "<space>fb", ":Telescope buffers<Return>", options)
keymap.set("n", "<space>fh", ":Telescope help_tags<Return>", options)

-- Open lazydocker and lazygit in a floating terminal
keymap.set("n", "<space>og", ":FloatermNew --width=0.9 --height=0.9 lazygit<Return>")
keymap.set("n", "<space>od", ":FloatermNew --width=0.9 --height=0.9 lazydocker<Return>")

-- NvimTree
keymap.set("n", "<space>tf", ":NvimTreeFocus<Return>", options)
keymap.set("n", "<space>tt", ":NvimTreeToggle<Return>", options)

-- DAP Debugging
keymap.set("n", "<space><F5>", ":lua require('dap').continue()<Return>", options)
keymap.set("n", "<space><F6>", ":lua require('dap').run_to_cursor()<Return>", options)
keymap.set("n", "<space><F7>", ":lua require('dap').close()<Return>", options)
keymap.set("n", "<space><F10>", ":lua require('dap').step_over()<Return>", options)
keymap.set("n", "<space><F11>", ":lua require('dap').step_into()<Return>", options)
keymap.set("n", "<space><F12>", ":lua require('dap').step_out()<Return>", options)
keymap.set("n", "<space>b", ":lua require('dap').toggle_breakpoint()<Return>", options)
keymap.set(
  "n",
  "<space>B",
  ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<Return>",
  options
)
keymap.set(
  "n",
  "<space>lp",
  ":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<Return>",
  options
)
keymap.set("n", "<space>dr", ":lua require('dap').repl.open()<Return>", options)
keymap.set("n", "<space>dl", ":lua require('dap').run_last()<Return>", options)
