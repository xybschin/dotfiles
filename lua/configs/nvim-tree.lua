require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 40,
  },
  renderer = {
    group_empty = true,
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
