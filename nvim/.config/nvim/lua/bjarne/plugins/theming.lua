return {
  { "lewis6991/gitsigns.nvim" },
  {
    "savq/melange-nvim",
    init = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme "melange"
    end,
  },
  { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
}
