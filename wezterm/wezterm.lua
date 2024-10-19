local config = {}
local wezterm = require("wezterm")

local is_windows = package.config:sub(1, 1) == "\\"
if is_windows then
	config.default_prog = { "wsl" }
end

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

local theme = wezterm.plugin.require("https://github.com/neapsix/wezterm").main

config.colors = theme.colors()
config.font_size = 16
config.colors["background"] = "#000"
config.font = wezterm.font({
	family = "JetBrainsMono Nerd Font",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})

return config
