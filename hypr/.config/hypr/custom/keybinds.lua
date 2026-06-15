hl.bind("XF86Calculator", hl.dsp.exec_cmd("gnome-calculator"))
hl.bind("SUPER+Z", hl.dsp.exec_cmd("zathura"))
-- Focus movement (Super+Alt + h,j,k,l)
hl.bind("SUPER+ALT+H", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER+ALT+J", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER+ALT+K", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER+ALT+L", hl.dsp.focus({ direction = "r" }))

-- To switch between windows in a floating workspace:
-- hl.bind("ALT+TAB", hl.dsp.window.cycle_next()) --Change focus to another window#Apps
-- h1.bind("ALT+SHIFT+TAB", hl.dsp.window.cycle_prev()) --Change focus to another window#Apps

hl.unbind("SUPER + K", hl.dsp.global("quickshell:oskToggle"), { description = "Shell: Toggle on-screen keyboard" })
hl.bind("SUPER + SHIFT+K ", hl.dsp.global("quickshell:oskToggle"), { description = "Shell: Toggle on-screen keyboard" })
--
-- default keybind for toggle bar unbound
hl.unbind("SUPER + J", hl.dsp.global("quickshell:barToggle"), { description = "Shell: Toggle bar" })
-- Cycle next
hl.bind("SUPER+j", hl.dsp.window.cycle_next())
hl.bind("SUPER+j", hl.dsp.window.fullscreen_state({ internal = 1, client = 0, action = "toggle" }))

-- Cycle prev
hl.bind("SUPER+k", hl.dsp.window.cycle_next({ prev }))
hl.bind("SUPER+k", hl.dsp.window.fullscreen_state({ internal = 1, client = 0, action = "toggle" }))

--  unbind terminal default keybind to toogle bar
hl.unbind("SUPER + Return", hl.dsp.exec_cmd(terminal), { description = "App: Terminal" })
hl.bind("SUPER + Return", hl.dsp.global("quickshell:barToggle"), { description = "Shell: Toggle bar" })
