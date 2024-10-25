return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    {
      "SmiteshP/nvim-navbuddy",
      dependencies = {
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
      },
      opts = { lsp = { auto_attach = true } },
    },
  },
  config = function()
    local lspconfig = require "lspconfig"
    local mason_lspconfig = require "mason-lspconfig"
    local cmp_nvim_lsp = require "cmp_nvim_lsp"
    local capabilities = cmp_nvim_lsp.default_capabilities()

    mason_lspconfig.setup_handlers {
      function(server_name)
        lspconfig[server_name].setup {
          capabilities = capabilities,
        }
      end,
      ["lua_ls"] = function()
        lspconfig["lua_ls"].setup {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
              completion = { callSnippet = "Replace" },
            },
          },
        }
      end,
    }

    -- Use LspAttach autocommand to only map the following keys
    -- after the language server attaches to the current buffer
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

        require("which-key").add {
          { "<leader>l", group = "LSP" },
          { "<leader>lD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
          { "<leader>ld", vim.lsp.buf.definition, desc = "Goto Definition" },
          { "<leader>lh", vim.lsp.buf.hover, desc = "Show Hover" },
          { "<leader>li", vim.lsp.buf.implementation, desc = "Goto Implementation" },
          { "<leader>ls", vim.lsp.buf.signature_help, desc = "Show Signature Help" },
          { "<leader>lt", vim.lsp.buf.type_definition, desc = "Goto Type Definition" },
          { "<leader>lr", vim.lsp.buf.rename, desc = "Rename" },
          { "<leader>la", vim.lsp.buf.code_action, desc = "Code Action" },
          { "<leader>lR", vim.lsp.buf.references, desc = "Show References" },

          { "<leader>w", group = "Workspaces" },
          { "<leader>wa", vim.lsp.buf.add_workspace_folder, desc = "Add Workspace Folder" },
          { "<leader>wr", vim.lsp.buf.remove_workspace_folder, desc = "Remove Workspace Folder" },
          {
            "<leader>wl",
            function()
              print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end,
            desc = "List Workspace Folders",
          },
        }
      end,
    })
  end,
}
