local api = require("nvim-tree.api")

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  sync_root_with_cwd = true,
  view = {
    width = 40,
    adaptive_size = true,
  },
  renderer = {
    group_empty = false,
    indent_markers = {
      enable = true,
    },
    highlight_opened_files = "name",
    highlight_modified = "icon",
    icons = {
      git_placement = "signcolumn",
      show = {
        file = true,
        folder = false,
        folder_arrow = true,
        git = true,
      },
    },
  },
  actions = {
    change_dir = {
      enable = false,
      restrict_above_cwd = true,
    },
    open_file = {
      resize_window = true
    },
  },
  filters = {
    custom = {
      "^.git$",
      ".cache",
      ".DS_Store",
      "bun.lockdb",
    },
  },
})

api.events.subscribe(api.events.Event.FileCreated, function(file)
  vim.cmd("edit " .. file.fname)
end)
