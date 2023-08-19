require('mappings')
require('plugins')
require('settings')

local themeStatus, _ = pcall(require, "kanagawa")
if themeStatus then
  vim.cmd("colorscheme kanagawa-dragon")
end
