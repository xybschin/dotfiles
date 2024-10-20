local wezterm = require("wezterm")
local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]

custom.background = "#000000"
custom.tab_bar.background = "#040404"
custom.tab_bar.inactive_tab.bg_color = "#0f0f0f"
custom.tab_bar.new_tab.bg_color = "#080808"

return {
	window_decorations = "RESIZE",
	hide_tab_bar_if_only_one_tab = true,
	font_size = 16,
	font = wezterm.font({
		family = "JetBrainsMono Nerd Font",
		harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	}),
	color_schemes = { ["OLEDppuccin"] = custom },
	color_scheme = "OLEDppuccin",
}
