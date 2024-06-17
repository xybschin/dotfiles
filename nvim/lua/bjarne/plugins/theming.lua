return {
  -- {
  --   "danishprakash/vim-yami",
  --   config = function()
  --     vim.cmd "colorscheme yami"
  --   end,
  -- },
  {
    "fxn/vim-monochrome",
    config = function()
      vim.cmd "colorscheme monochrome"
    end,
  },
  -- {
  --   "jesseleite/nvim-noirbuddy",
  --   dependencies = {
  --     { "tjdevries/colorbuddy.nvim" },
  --   },
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     colors = {
  --       background = "#000000",
  --     },
  --   },
  -- },
  { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
}
