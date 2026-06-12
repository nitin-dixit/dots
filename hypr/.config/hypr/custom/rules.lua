-- Disable blur for xwayland context menus
-- hl.window_rule({ match = { class = "^()$", title = "^()$" }, no_blur = false })

-- Disable blur for every window
-- hl.window_rule({ match = { class = ".*" }, no_blur = false })

hl.window_rule({
	match = { class = "kitty" },
	opacity = 0.9,
})
