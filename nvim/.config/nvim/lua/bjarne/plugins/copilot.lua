return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup {
      suggestion = {
        auto_trigger = true,
        debounce = 50,
        keymap = {
          accept = "<tab>",
        },
      },
    }
  end,
}
