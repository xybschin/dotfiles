local wezterm = require("wezterm")
local theme = wezterm.plugin.require("https://github.com/neapsix/wezterm").main

local colors = theme.colors()
colors["background"] = "#0D0C14"

return {
	window_decorations = "RESIZE",
	hide_tab_bar_if_only_one_tab = true,
	font_size = 16,
	font = wezterm.font({
		family = "JetBrainsMono Nerd Font",
		harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	}),
	colors = colors,
	-- color_scheme = "melange_dark",
}
