hl.bind("XF86Calculator", hl.dsp.exec_cmd("gnome-calculator"))
hl.bind("SUPER+Z", hl.dsp.exec_cmd("zathura"))
hl.bind("SUPER+P", hl.dsp.exec_cmd("superproductivity"))
hl.bind("SUPER + ALT + Q", hl.dsp.exec_cmd("QMPlay2"))

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

-- 2-way scratchpad
hl.unbind("SUPER + ALT + S")
hl.bind(
	"SUPER + ALT + S",
	hl.dsp.exec_cmd([=[bash -lc '
  addr="$(hyprctl activewindow -j | jq -r ".address")"
  win_ws="$(hyprctl activewindow -j | jq -r ".workspace.name")"
  target="$(hyprctl monitors -j | jq -r ".[] | select(.focused) | .activeWorkspace.name")"
  if [ -z "$addr" ] || [ "$addr" = "null" ]; then
    exit 0
  fi
  if [[ "$win_ws" == special:* ]]; then
    hyprctl dispatch "hl.dsp.window.move({ workspace = \"$target\", window = \"address:$addr\" })"
  else
    hyprctl dispatch "hl.dsp.window.move({ workspace = \"special:special\", follow = false, window = \"address:$addr\" })"
  fi
  ']=]),
	{ description = "Window: Toggle focused window to/from scratchpad" }
)

-- sinkswitch keybind
hl.bind(
	"SUPER+X",
	hl.dsp.exec_cmd(
		"[workspace special:sinkswitch] kitty --class kitty-sinkswitch -e ~/scripts/sinkswitch.sh -exclude 46"
	)
)
