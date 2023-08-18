require('plugins')
require('settings')

local themeStatus, _ = pcall(require, "rose-pine")
if themeStatus then
  vim.cmd("colorscheme rose-pine")
end
