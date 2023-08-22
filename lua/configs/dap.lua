local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  command = '/usr/local/netcoredbg',
  args = { '--interpreter=vscode' }
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = ".NET Launch (console)",
    request = "launch",
    program = function()
      return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}
