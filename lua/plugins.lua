-- Automatically run: PackerCompile
vim.cmd [[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]

-- Automatically install packer when config gets cloned
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- Colorschemes
    use "hardselius/warlock"
    use "arzg/vim-substrata"
    use "sainnhe/gruvbox-material"
    use "RRethy/nvim-base16"
    use "ellisonleao/gruvbox.nvim"

    -- UI
    use "vigoux/notifier.nvim"
    use "onsails/lspkind-nvim"
    use "kyazdani42/nvim-web-devicons"
    use "lukas-reineke/indent-blankline.nvim"

    -- UX Improvements
    use {
        "windwp/nvim-autopairs",
        { "akinsho/toggleterm.nvim", config = [[require('configs.toggleterm')]] },
        "github/copilot.vim",
    }

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 150
            require("which-key").setup {}
        end,
    }

    -- Buffer management
    use {
        "akinsho/bufferline.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = [[require('configs.bufferline')]],
    }

    use {
        {
            "L3MON4D3/LuaSnip",
            opt = true,
        },
        "rafamadriz/friendly-snippets",
    }

    -- Search
    use {
        {
            "nvim-telescope/telescope.nvim",
            requires = {
                "nvim-lua/popup.nvim",
                "nvim-lua/plenary.nvim",
                "telescope-frecency.nvim",
                "telescope-fzf-native.nvim",
                "nvim-telescope/telescope-ui-select.nvim",
            },
            wants = {
                "popup.nvim",
                "plenary.nvim",
                "telescope-frecency.nvim",
                "telescope-fzf-native.nvim",
            },
            setup = [[require('configs.telescope_setup')]],
            config = [[require('configs.telescope')]],
            cmd = "Telescope",
            module = "telescope",
        },
        {
            "nvim-telescope/telescope-frecency.nvim",
            after = "telescope.nvim",
            requires = "tami5/sqlite.lua",
        },
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            run = "make",
        },
        "crispgm/telescope-heading.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
    }

    -- Completion
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            { "hrsh7th/cmp-buffer", after = "nvim-cmp" },
            "hrsh7th/cmp-nvim-lsp",
            "onsails/lspkind.nvim",
            { "hrsh7th/cmp-nvim-lsp-signature-help", after = "nvim-cmp" },
            { "hrsh7th/cmp-path", after = "nvim-cmp" },
            { "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" },
            { "saadparwaiz1/cmp_luasnip", after = "nvim-cmp" },
            "lukas-reineke/cmp-under-comparator",
            { "hrsh7th/cmp-cmdline", after = "nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp-document-symbol", after = "nvim-cmp" },
        },
        config = [[require('configs.cmp')]],
        event = "InsertEnter",
        wants = "LuaSnip",
    }

    -- highlights
    use {
        "nvim-treesitter/nvim-treesitter",
        requires = {
            "nvim-treesitter/nvim-treesitter-refactor",
            "RRethy/nvim-treesitter-textsubjects",
        },
        run = ":TSUpdate",
    }

    -- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        {
            "jose-elias-alvarez/null-ls.nvim",
            requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
        },
    }

    -- null-ls (formatting/linting)
    use {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        requires = {
            "williamboman/mason.nvim",
            "jose-elias-alvarez/null-ls.nvim",
        },
        config = [[require('configs.lsp_config')]],
    }

    -- Status line
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
        config = function()
            require("lualine").setup {
                options = {
                    theme = "gruvbox",
                },
            }
        end,
    }

    -- Path navigation
    use {
        "nvim-tree/nvim-tree.lua",
        config = [[require('configs.nvim-tree')]],
    }

    -- Debugger
    use {
        {
            "mfussenegger/nvim-dap",
            setup = [[require('configs.dap_setup')]],
            config = [[require('configs.dap')]],
            requires = "jbyuki/one-small-step-for-vimkind",
            wants = "one-small-step-for-vimkind",
        },
        {
            "rcarriga/nvim-dap-ui",
            requires = "nvim-dap",
            wants = "nvim-dap",
            after = "nvim-dap",
            config = function()
                require("dapui").setup()
            end,
        },
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require("packer").sync()
    end
end)
