return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require("nvim-tree").setup {
        sort_by = "case_sensitive",
        sync_root_with_cwd = true,
        view = {
          width = 48,
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
            resize_window = true,
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
        tab = {
          sync = {
            open = true,
            close = true,
          },
        },
      }

      vim.keymap.set("n", "<leader>s", ":NvimTreeFocus<Return>")
      vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<Return>")
    end,
  },
}
