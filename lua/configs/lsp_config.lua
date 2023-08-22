require("mason").setup()
local mason_lsp_config = require("mason-lspconfig")
local mason_null_ls = require("mason-null-ls")
local null_ls = require("null-ls")
local nvim_lsp = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- This ensures that the following
-- language servers are installed
mason_lsp_config.setup({
  ensure_installed = {
    "tailwindcss",
    "eslint",
    "omnisharp",
    "dockerls",
    "jsonls",
    "tsserver",
    "yamlls",
    "marksman",
    "html",
    "docker_compose_language_service",
    "cssls",
    "cssmodules_ls",
    "lua_ls",
  },
})

-- This ensures that the following
-- formatters/linters are installed
mason_null_ls.setup({
  ensure_installed = {
    "stylua",
    "prettierd",
    "prettier",
    "eslint_d",
    "eslint",
  },
  automatic_installation = false,
  handlers = {},
})

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- Custom on attach function to set keymaps for lsp actions
local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({
          async = false,
        })
      end,
    })
  end

  vim.keymap.set("n", "<Space>rn", vim.lsp.buf.rename, {})
  vim.keymap.set("n", "<Space>ca", vim.lsp.buf.code_action, {})
  vim.keymap.set("n", "<Space>gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "<Space>gi", vim.lsp.buf.implementation, {})
end

null_ls.setup({ on_attach = on_attach })

mason_lsp_config.setup_handlers({
  function(lsp_server_name)
    nvim_lsp[lsp_server_name].setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end,

  -- Override the default lua_ls setup
  ["lua_ls"] = function()
    nvim_lsp.lua_ls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = {
              "vim",
              "require",
            },
          },
          workspace = {
            checkThirdParty = false,
            library = vim.api.nvim_get_runtime_file("", true),
          },
          telemetry = {
            enable = false,
          },
        },
      },
    })
  end,
})
