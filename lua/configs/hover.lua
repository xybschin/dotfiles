require("hover").setup {
  init = function()
    -- Require providers
    require("hover.providers.lsp")
    -- require('hover.providers.gh')
    -- require('hover.providers.gh_user')
    -- require('hover.providers.jira')
    -- require('hover.providers.man')
    -- require('hover.providers.dictionary')
  end,
  preview_opts = {
    border = nil
  },
  preview_window = false,
  title = true
}

