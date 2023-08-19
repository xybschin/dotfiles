vim.g.ale_fix_on_save = 1

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
  ['javascript'] = { 'prettier', 'eslint' },
  ['typescript'] = { 'prettier', 'eslint' },
  ['javascriptreact'] = { 'prettier' },
  ['typescriptreact'] = { 'prettier', 'eslint' },
  ['css'] = { 'prettier' },
  ['scss'] = { 'prettier' },
  ['html'] = { 'prettier' },
  ['json'] = { 'prettier' },
  ['yaml'] = { 'prettier' },
  ['markdown'] = { 'prettier' },
  ['lua'] = { 'stylua' },
}
