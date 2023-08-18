-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
  pattern = "plugins.lua",
  command = "source <afile> | PackerCompile",
})

return require("packer").startup(function(use)
  use("voldikss/vim-floaterm")
  use("github/copilot.vim")
  use("onsails/lspkind-nvim")
  use("wbthomason/packer.nvim")
  use("kyazdani42/nvim-web-devicons")
  use("windwp/nvim-ts-autotag")
  use("L3MON4D3/LuaSnip")
  use("nvim-lua/plenary.nvim")

  use({
    "rose-pine/neovim",
    as = "rose-pine",
  })

  use({
    "saadparwaiz1/cmp_luasnip",
    after = "nvim-cmp"
  })

  use({
    "nvim-tree/nvim-tree.lua",
    config = function() require("configs.nvim-tree") end
  })

  use({
    'jose-elias-alvarez/null-ls.nvim',
    config = function() require("configs.null-ls") end
  })

  use({
    'MunifTanjim/prettier.nvim',
    config = function() require("configs.prettier") end
  })

  use({
    "nvim-lualine/lualine.nvim",
    config = function()
      require("configs.lualine")
    end,
  })

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

  use({
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lsp")
    end,
  })

  use({
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function()
      require("configs.cmp")
    end
  })

  use({
    "hrsh7th/cmp-buffer",
    after = "nvim-cmp",
  })

  use("hrsh7th/cmp-nvim-lsp")
end)
