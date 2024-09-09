return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    local config = require "nvim-treesitter.configs"

    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

    config.setup {
      highlight = { enable = true, additional_vim_regex_highlighting = false },
      context_commentstring = { enable = true, enable_autocmd = false },

      ensure_installed = {
        "markdown",
        "tsx",
        "typescript",
        "javascript",
        "json",
        "yaml",
        "css",
        "html",
        "lua",
        "gitignore",
        "python",
        "c_sharp",
      },

      rainbow = {
        enable = true,
        disable = { "html" },
        extended_mode = false,
        max_file_lines = nil,
      },

      autotag = { enable = true },
      incremental_selection = { enable = true },
      indent = { enable = true },
    }
  end,
}
