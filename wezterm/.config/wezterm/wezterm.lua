local wezterm = require("wezterm")

return {
	window_decorations = "RESIZE",
	hide_tab_bar_if_only_one_tab = true,
	font_size = 11,
	font = wezterm.font({
		family = "Iosevka Nerd Font",
		harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	}),
	color_scheme = "alabaster_dark",
}
