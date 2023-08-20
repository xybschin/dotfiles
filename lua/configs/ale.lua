vim.g.ale_fix_on_save = 1
vim.g.ale_sign_error = '>>'
vim.g.ale_sign_warning = '--'
vim.g.ale_sign_info = '=='
vim.g.ale_echo_msg_error_str = 'E'
vim.g.ale_echo_msg_warning_str = 'W'
vim.g.ale_echo_msg_format = '[%linter%] %s [%severity%]'


vim.g.ale_linters = {
  ['javascript'] = { 'eslint' },
  ['typescript'] = { 'eslint' },
  ['javascriptreact'] = { 'eslint' },
  ['typescriptreact'] = { 'eslint' },
  ['css'] = { 'stylelint' },
  ['scss'] = { 'stylelint' },
  ['html'] = { 'stylelint' },
  ['json'] = { 'jsonlint' },
  ['yaml'] = { 'yamllint' },
  ['markdown'] = { 'markdownlint' },
  ['lua'] = { 'luacheck' },
}

vim.g.ale_fixers = {
  ['javascript'] = { 'prettier', 'eslint', 'prettier-eslint' },
  ['typescript'] = { 'prettier', 'eslint', 'prettier-eslint' },
  ['javascriptreact'] = { 'prettier', 'eslint', 'prettier-eslint' },
  ['typescriptreact'] = { 'prettier', 'eslint', 'prettier-eslint' },
  ['css'] = { 'prettier' },
  ['scss'] = { 'prettier' },
  ['html'] = { 'prettier' },
  ['json'] = { 'prettier' },
  ['yaml'] = { 'prettier' },
  ['markdown'] = { 'prettier' },
  ['lua'] = { 'stylua' },
}
