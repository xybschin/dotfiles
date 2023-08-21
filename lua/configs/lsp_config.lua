require("mason").setup()
require("mason-lspconfig").setup({
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

local nvim_lsp = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = function(_, _)
  vim.keymap.set("n", "<Space>rn", vim.lsp.buf.rename, {});
  vim.keymap.set("n", "<Space>ca", vim.lsp.buf.code_action, {});
  vim.keymap.set("n", "<Space>gd", vim.lsp.buf.definition, {});
  vim.keymap.set("n", "<Space>gi", vim.lsp.buf.implementation, {});
  vim.keymap.set("n", "<Space>gr", require("telescope").lsp_references, {});
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {});
end

require("mason-lspconfig").setup_handlers({
  function (lsp_server_name)
    nvim_lsp[lsp_server_name].setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end,
  ["lua_ls"] = function()
    nvim_lsp.lua_ls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = {
            version = 'LuaJIT',
          },
          diagnostics = {
            globals = {
              'vim',
              'require'
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
  end
})
