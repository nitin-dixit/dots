hl.on("hyprland.start", function()
	-- Bar, wallpaper
	hl.exec_cmd("otd-daemon")
	hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 18")
	hl.exec_cmd("kdeconnect-indicator")
	hl.exec_cmd("~/Developer/nitin-dixit/configs/dots/end-4-hyprland/custom/scripts/handle_monitor_connect.sh")
	hl.exec_cmd("superproductivity")
	hl.exec_cmd("zathura")
end)
