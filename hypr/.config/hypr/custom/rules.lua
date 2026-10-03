-- Disable blur for xwayland context menus
-- hl.window_rule({ match = { class = "^()$", title = "^()$" }, no_blur = false })

-- Disable blur for every window
-- hl.window_rule({ match = { class = ".*" }, no_blur = false })

hl.window_rule({
	match = { class = "kitty" },
	opacity = 0.9,
	no_blur = false,
})

hl.window_rule({
	match = { class = "com.mitchellh.ghostty" },
	no_blur = false,
	opacity = 0.95,
})

hl.window_rule({
	match = { class = "superproductivity" },
	monitor = "eDP-1",
	no_blur = false,
})

hl.window_rule({
	match = { class = "org.pwmt.zathura" },
	opacity = 0.9,
	monitor = "eDP-1",
	no_blur = false,
})

hl.window_rule({
	match = { class = "org.gnome.SystemMonitor" },
	opacity = 0.9,
	no_blur = false,
})

hl.window_rule({
	match = { class = "org.kde.dolphin" },
	opacity = 0.9,
	no_blur = false,
})

hl.window_rule({
	name = "scratchpad-kitty-sinkswitch",
	match = { class = "kitty-sinkswitch" },
	float = true,
	center = true,
	animation = "slide bottom",
	size = "480 140",
	min_size = { 480, 140 },
	max_size = { 480, 140 },
	dim_around = true,
})

hl.window_rule({
	match = { class = "com.stremio.Stremio" },
	decorate = false,
	no_blur = false,
	opacity = 0.9,
})
