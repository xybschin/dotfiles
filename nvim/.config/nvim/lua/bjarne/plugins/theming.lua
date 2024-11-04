return {
  { "lewis6991/gitsigns.nvim" },
  {
    "savq/melange-nvim",
    init = function()
      vim.cmd.colorscheme "melange" -- colorscheme still needs vim.cmd
    end,
  },
  { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   init = function()
  --     vim.cmd.colorscheme "rose-pine"
  --   end,
  -- },
}
