hl.monitor({
	output = "DP-3",
	mode = "1920x1080@60",
	position = "3840x0",
	scale = "auto",
})
hl.monitor({
	output = "DP-2",
	mode = "1920x1080@60",
	position = "1920x0",
	scale = "auto",
})
hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@60",
	position = "0x0",
	scale = "1",
})

hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "2", monitor = "DP-2" })
hl.workspace_rule({ workspace = "3", monitor = "DP-3" })
