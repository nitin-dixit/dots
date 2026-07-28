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
	opacity = 0.9,
})

hl.window_rule({
	match = { class = "superproductivity-bin" },
	opacity = 0.9,
	monitor = "eDP-1",
	no_blur = false,
})

hl.window_rule({
	match = { class = "obsidian" },
	opacity = 0.9,
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
	match = { class = "equibop" },
	opacity = 0.9,
	no_blur = false,
})

hl.window_rule({
	match = { class = "org.kde.dolphin" },
	opacity = 0.9,
	no_blur = false,
})
