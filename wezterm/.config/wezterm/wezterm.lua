local wezterm = require("wezterm")
local helpers = require("helpers")

local config = wezterm.config_builder()

-- apply some win/unix dependend settings
helpers.apply_platform_settings(config)

config.color_scheme = 'koda-dark'
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.use_fancy_tab_bar = false
config.window_decorations = 'RESIZE'
config.window_close_confirmation = 'NeverPrompt'
config.tab_max_width = 32

config.window_padding = { left = '.5cell', top = '.3cell', bottom = '.3cell', right = '.5cell' }

config.keys = {
  { key = 'l', mods = 'CTRL', action = wezterm.action.ShowLauncher },
}

return config
