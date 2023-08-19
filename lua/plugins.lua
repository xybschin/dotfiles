-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
  pattern = "plugins.lua",
  command = "source <afile> | PackerCompile",
})

-- Automatically install packer when config gets cloned
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  -- Packer
  use("wbthomason/packer.nvim")

  -- Bracket Utilities
  use("tpope/vim-surround")

  -- Common Utilities
  use("nvim-lua/plenary.nvim")

  -- Telescope
  use({
    "nvim-telescope/telescope.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },

    },
    config = function()
      require("configs.telescope")
    end,
  })

  -- Show keybinds
  use({
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 100
      require("configs.which-key")
    end
  })

  -- Linting and Formatting
  use({
    "dense-analysis/ale",
    config = function()
      require("configs.ale")
    end
  })

  --Autoclose brackets
  use({
    "m4xshen/autoclose.nvim",
    config = function()
      require("autoclose").setup()
    end
  })

  use {
    "amrbashir/nvim-docs-view",
    opt = true,
    cmd = { "DocsViewToggle" },
    config = function()
      require("docs-view").setup {
        position = "right",
        width = 60,
      }
    end
  }

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
    'ray-x/aurora',
    lazy = false,
    priority = 1000,
  })

  use("rebelot/kanagawa.nvim")

  -- File explorer
  use({
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("configs.nvim-tree")
    end
  })

  -- Statusline
  use({
    "vim-airline/vim-airline",
    config = function()
      require("configs.airline")
    end,
  })

  -- Statusline Themes
  use({
    "vim-airline/vim-airline-themes",
    after = "vim-airline",
  })

  -- Show open Buffers in Statusline
  use("bling/vim-bufferline")

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

  -- Markdown Preview
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use {
    "lewis6991/hover.nvim",
    config = function()
      require("hover")
    end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)
