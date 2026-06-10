hl.config({
	general = {
		gaps_in = "0.5",
		gaps_out = "0.5",
		border_size = 2,
		col = {

			active_border = { colors = { "rgba(ca9ee6ff)", "rgba(f2d5cfff)", angle = 45 } },
		},
	},
	decoration = {
		blur = {
			enabled = true,
			size = 3,
			passes = 4,
			new_optimizations = true,
			ignore_opacity = true,
			xray = true,
		},
		shadow = {
			enabled = true,
		},
	},
})
-- Set opacity to 1.0 active, 0.5 inactive and 0.8 fullscreen for kitty
hl.window_rule({
	match = { class = "kitty" },
	opacity = "0.8 override 0.5 override 0.8 override",
})
