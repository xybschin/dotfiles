-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
  pattern = "plugins.lua",
  command = "source <afile> | PackerCompile",
})

return require("packer").startup(function(use)
  -- Packer
  use("wbthomason/packer.nvim")

  -- Common Utilities
  use("nvim-lua/plenary.nvim")

  -- Show keybinds
  use({
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 100
      require("configs.which-key")
    end
  })

  use({
    "m4xshen/autoclose.nvim",
    config = function()
      require("autoclose").setup()
    end
  })

  -- Window management
  use("voldikss/vim-floaterm")

  -- Copilot
  use("github/copilot.vim")

  -- Picotograms for LSP
  use("onsails/lspkind-nvim")

  -- Icons
  use("kyazdani42/nvim-web-devicons")

  -- Snippet Engine
  use("L3MON4D3/LuaSnip")

  -- LuaSnip completion Source for nvim-cmp
  use({
    "saadparwaiz1/cmp_luasnip",
    after = "nvim-cmp"
  })

  -- Color scheme
  use({
    "rose-pine/neovim",
    as = "rose-pine",
  })

  -- File explorer
  use({
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("configs.nvim-tree")
    end
  })

  -- Statusline
  use({
    "nvim-lualine/lualine.nvim",
    config = function()
      require("configs.lualine")
    end,
  })

  -- Syntax highlighting
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install")
          .update({ with_sync = true })
    end,
    config = function()
      require("configs.treesitter")
    end,
  })

  -- Configs for Nvim LSP
  use({
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lsp")
    end,
  })

  -- Autocomplete
  use({
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function()
      require("configs.cmp")
    end
  })

  -- Autocomplete Sources
  use({
    "hrsh7th/cmp-buffer",
    after = "nvim-cmp",
  })

  -- Autocomplete Sources
  use("hrsh7th/cmp-nvim-lsp")
end)
