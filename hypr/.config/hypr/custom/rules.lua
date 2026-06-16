-- Disable blur for xwayland context menus
-- hl.window_rule({ match = { class = "^()$", title = "^()$" }, no_blur = false })

-- Disable blur for every window
-- hl.window_rule({ match = { class = ".*" }, no_blur = false })

hl.window_rule({
	match = { class = "kitty" },
	opacity = 0.9,
})

hl.window_rule({
	match = { class = "QMPlay2" },
	opacity = 0.9,
})

hl.window_rule({
	match = { class = "superproductivity" },
	opacity = 0.93,
})

hl.window_rule({
	match = { class = "org.pwmt.zathura" },
	opacity = 0.91,
})
