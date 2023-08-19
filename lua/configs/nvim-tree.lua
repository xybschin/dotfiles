require("nvim-tree").setup({
  sort_by = "case_sensitive",
  sync_root_with_cwd = true,
  view = {
    width = 50,
    adaptive_size = false,
  },
  renderer = {
    group_empty = true,
    indent_markers = {
      enable = true,
    },
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
