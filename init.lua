require('mappings')
require('plugins')
require('settings')

        local themeStatus, _ = pcall(require, "gruvbox")
if themeStatus then
  vim.cmd("colorscheme gruvbox")
end
