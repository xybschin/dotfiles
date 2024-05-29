return {
  {
    "jesseleite/nvim-noirbuddy",
    dependencies = {
      { "tjdevries/colorbuddy.nvim" },
    },
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
}
