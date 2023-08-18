require('maps')
require('plugins')
require('settings')

local themeStatus, _ = pcall(require, "github-theme")
if themeStatus then
  vim.cmd("colorscheme github_dark_high_contrast")
end
