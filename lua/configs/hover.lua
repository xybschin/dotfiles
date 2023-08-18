require("hover").setup {
  init = function()
    require("hover.providers.lsp")
  end,
  preview_opts = {
    border = {
      { 'A',   'NormalFloat' },
      { 'B',   'NormalFloat' },
      { 'C',   'NormalFloat' },
      { 'xx ', 'NormalFloat' },
      { 'D',   'NormalFloat' },
      { 'E',   'NormalFloat' },
      { 'F',   'NormalFloat' },
      { 'GG ', 'NormalFloat' },
    }
  },
  preview_window = false,
  title = true
}
