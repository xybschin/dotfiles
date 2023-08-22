local keymap = vim.keymap

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

