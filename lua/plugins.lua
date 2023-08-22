-- Automatically run: PackerCompile
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

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
  use "wbthomason/packer.nvim"
  use "tpope/vim-surround"
  use "nvim-lua/plenary.nvim"
  use "rafamadriz/friendly-snippets"
  use "m4xshen/autoclose.nvim"
  use "voldikss/vim-floaterm"
  use "github/copilot.vim"
  use "onsails/lspkind-nvim"
  use "kyazdani42/nvim-web-devicons"
  use "ellisonleao/gruvbox.nvim"

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 0
      require("which-key").setup()
    end
  }

  use { "mhartington/formatter.nvim", config = function() require("configs.formatter") end }
  use { "mfussenegger/nvim-lint", config = function() require("configs.linter") end }

  use "vim-airline/vim-airline"
  use { "vim-airline/vim-airline-themes", after = "vim-airline" }

  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use { "neovim/nvim-lspconfig", config = function() require("configs.lsp_config") end }

  use {
    "nvim-telescope/telescope.nvim",
    requires = {{ "nvim-lua/plenary.nvim" }},
    config = function() require("telescope").setup() end,
  }

  use { "L3MON4D3/LuaSnip", config = function() require("luasnip.loaders.from_vscode").lazy_load() end }
  use { "nvim-tree/nvim-tree.lua", config = function() require("configs.nvim-tree") end }

  use{
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install")
      .update({ with_sync = true })
    end,
    config = function()
      require("configs.treesitter")
    end,
  }

  use { "hrsh7th/nvim-cmp", event = "InsertEnter", config = function() require("configs.cmp") end }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-buffer", after = "nvim-cmp" }
  use { "saadparwaiz1/cmp_luasnip", after = "nvim-cmp" }

  use { "mfussenegger/nvim-dap", config = function() require("configs.dap") end }
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  use { "theHamsta/nvim-dap-virtual-text", requires = { "mfussenegger/nvim-dap" } }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
