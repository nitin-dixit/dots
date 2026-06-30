hl.config({
	general = {
		gaps_in = "0",
		gaps_out = "2",
		border_size = 2,
		col = {

			active_border = { colors = { "rgba(ca9ee6ff)", "rgba(f2d5cfff)", angle = 45 } },
		},
	},
	decoration = {
		blur = {
			enabled = false,
			size = 3,
			passes = 4,
			new_optimizations = true,
			ignore_opacity = true,
			xray = true,
		},
		shadow = {
			enabled = false,
		},
		dim_inactive = false,
	},
	animations = {
		enabled = false,
	},
})
