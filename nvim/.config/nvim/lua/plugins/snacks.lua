local quotes = {
	"Stay curious.",
	"Build something useful today.",
	"Small improvements compound.",
	"Code. Learn. Repeat.",
	"Progress beats perfection.",
	-- Software engineering
	"Make it work. Make it right. Make it fast.",
	"Read code. Write code. Repeat.",
	"The best debugger is a good night's sleep.",
	"Every bug teaches something.",
	"Simple scales better.",
	"Delete code when you can.",
	"Optimize only after measuring.",
	"Consistency beats intensity.",
	"Automation is an investment.",
	"Leave the code better than you found it.",
	"Focus on one problem at a time.",
	"Good software is written twice.",
	"Small commits. Clear history.",
	"Learn one new thing today.",
	"Master fundamentals before frameworks.",
	"A clean design reduces future work.",
	"Done is better than abandoned.",
	"Don't guess. Verify.",
	"Measure. Improve. Repeat.",
	"Every expert was once confused.",
	"Deep work creates lasting value.",
	"Keep shipping.",
	"Today's effort becomes tomorrow's skill.",
	"Discipline outlasts motivation.",
	"Build assets, not just projects.",
	"Quality is a habit.",
	"One focused hour beats four distracted ones.",
	"The keyboard rewards consistency.",
	"Think clearly. Code simply.",
}
local last = 0

local function random_quote()
	local i
	repeat
		i = math.random(#quotes)
	until i ~= last or #quotes == 1
	last = i
	return quotes[i]
end

local greeting = function()
	local hour = tonumber(os.date("%H"))
	local username = os.getenv("USER") or "friend"

	local greet = (
		hour < 5 and "🌙 Burning the midnight oil"
		or hour < 12 and "😎 Good Morning"
		or hour < 17 and "🌻 Good Afternoon"
		or hour < 21 and "✨ Good Evening"
		or "😴 Good Night"
	)

	return {
		{
			text = greet .. ", " .. username .. "!",
			align = "center",
			hl = "Special",
		},
		{
			text = '\n"' .. random_quote() .. '"',
			align = "center",
			hl = "Comment",
			padding = 1,
		},
	}
end

return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		dashboard = {
			enabled = true,
			pane_gap = 10,
			row = nil,
			preset = {
				header = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⢀⡀⢀⡀⠀⣠⡄⠀⠀⢀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣴⡇⣴⡇⣴⣯⣴⣿⣷⣿⣷⣾⣿⣷⣧⣶⣿⣵⣿⣱⣾⣠⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣼⣿⡿⣿⣿⡿⣿⣿⣿⣿⣟⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣴⣇⣠⡤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣼⣿⢿⢻⣹⣿⠟⣼⣿⡿⣿⡿⡜⢁⣿⢛⣽⠏⣿⣿⣯⡿⣛⡽⣿⣿⣿⣿⣿⣿⣿⣆⡀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⡿⢻⣿⣿⢿⡏⢠⣿⠟⣹⣿⠁⣱⣿⣷⣿⣣⣾⣿⣿⣿⣭⣥⣾⠏⣫⣿⣿⣿⣿⣿⣿⣷⣿⣁⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣅⡈⣿⣿⠘⣿⡀⣿⣰⣿⣿⣾⣿⣿⣿⡿⠿⢿⣿⣿⣿⣿⣿⣿⣭⣥⡴⠾⠿⢿⣿⣿⣿⣿⣿⣏⣠⡴⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣾⣿⣧⣿⣿⣿⣿⣿⠻⡿⡟⠀⢿⣆⠀⠀⢻⣷⠈⠹⣿⣿⣿⣿⣿⣯⣉⣩⣭⣿⣿⣿⣾⣿⣿⣯⣤⠀⠀⠀⠀⠀⠀⠀
⢀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⢿⣿⣿⣿⣿⢟⣿⣿⣿⡿⠁⣯⡇⠀⢿⣷⠀⠈⠻⣆⠀⠈⢿⡀⠀⠿⣿⣿⣿⠷⠾⠿⢿⣿⣿⣿⣿⡿⣿⣿⣿⣧⡶⠀⠀⠀⠀⠀⠀
⣋⣽⡏⢻⠓⠦⢄⡀⠀⠀⠀⠀⠀⠀⣾⢁⣿⣿⡿⣿⡏⢸⣿⠀⣿⠁⠀⠘⣷⠀⠀⠙⣦⣤⣤⣤⣵⣤⣼⣅⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣯⣤⠀⠀⠀⠀⠀⠀
⠏⣹⣿⡈⡇⠀⠈⢧⠀⠀⠀⠀⠀⠀⠁⢸⡿⢻⡇⣿⠀⠸⣿⠀⠘⢧⠀⠀⣈⣷⣶⡿⠟⠋⠉⠉⠉⠛⣿⠟⠁⠀⠀⠈⢻⣿⣿⣿⣶⠛⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡄⠀⠀⠀⠀
⡯⣽⡏⣧⢹⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠘⣇⡞⠀⠙⢦⣀⠙⢧⣶⣾⣷⡿⠟⢉⣀⣀⡤⢤⣤⣀⣤⣾⠋⠀⠀⠀⠀⠀⢸⣿⣿⣟⣛⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⠏⡀⠀⠀⠀⠀
⣤⡈⢙⣾⣯⠷⣤⣌⡇⠀⠀⠀⠀⠀⠀⠀⢻⣿⠿⠿⠿⢿⡀⠀⠈⠙⠿⣿⢾⣟⣛⣿⣻⣍⣳⣠⠼⠋⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⡽⢿⣛⢷⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀
⡄⢠⡼⣋⡴⢖⣛⣛⡇⠀⠀⠀⠀⠀⠀⠀⠀⣿⢶⣤⣴⡾⠣⢤⡀⠀⠀⠀⠉⠛⠛⠚⠂⠀⠀⣠⣤⣀⣀⡀⠀⠀⠀⠀⢰⣿⣿⣿⢏⣠⣿⣿⡾⣿⣿⣽⣿⣿⣿⠃⠀⠀⠀⠀⠀
⠻⣿⣎⣾⠟⠉⠉⠉⢻⡆⠀⠀⠀⠀⠀⠀⠀⡟⠛⣹⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⣿⣿⣿⡟⠛⠟⠓⠂⠀⠀⢰⣿⣿⢣⣾⣟⡿⡼⣿⣿⣷⣿⣿⣿⠷⠀⠀⠀⠀⠀⠀
⠀⠈⣿⡏⢀⡤⠖⠚⠙⢿⡀⠀⠀⠀⠀⠀⠀⡇⠘⣿⣿⣶⣦⣀⢠⠀⠀⠀⠀⠀⠀⠀⠀⣟⣿⣿⣿⣿⣟⠛⠒⠀⠀⠀⠀⠙⠃⢘⡿⠉⢻⣦⣸⢻⣿⣿⣿⣿⠆⠀⠀⠀⠀⠀⠀
⠀⢠⡇⣿⡏⠀⢀⣀⣠⠤⣧⠀⠀⠀⠀⠀⠀⡇⠀⠹⣿⣿⣿⠿⠎⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⡙⠛⠓⠂⠀⠀⠀⠀⠀⢻⣿⠚⠛⠉⢁⣾⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀
⠀⢸⠃⢿⢷⣴⠋⣤⠤⠛⠛⣇⠀⠀⠀⠀⠀⣇⠀⠀⣀⣛⣠⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣧⡇⠀⠀⠀⠀⠀⠀⠀⠀⣐⠛⠋⠀⢀⣴⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀
⠀⡜⢀⡾⢸⢧⠞⠁⢀⡠⠤⠚⣦⠀⠀⠀⠀⢸⠀⢸⡟⣉⣉⣉⠙⠓⢤⣀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣶⣀⠀⠀⠀⠀⠀⠀⠀⣿⣆⣀⡴⢿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠂⣳⠎⠀⣼⠈⣇⡰⠋⠀⣀⣀⣈⣧⠀⠀⠀⢸⡇⠘⠟⠛⠛⠛⠷⡦⠀⠈⠓⠀⠀⠀⠀⠀⠀⠀⠸⠿⠋⠀⠀⠀⠀⠀⠀⣼⠋⢩⣿⠁⠀⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢷⠏⠀⣰⡇⠀⠸⣶⠋⣩⠞⠉⠀⠘⣆⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⠏⠀⠰⣿⠀⠀⢹⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣻⡄⠀⣿⡇⠀⠀⠹⡾⢣⠀⠀⠀⣀⣘⣧⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⠇⠀⠀⠈⣿⠀⠀⠸⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠣⡇⠀⢿⡃⠀⠀⠀⢻⡼⣷⡞⠋⠁⠀⠘⣧⠘⣇⠀⠀⠀⢀⣀⠀⠀⢀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣴⣿⣿⡿⠛⠃⣿⠀⠀⠀⢸⣿⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⡇⠀⣾⡇⠀⠀⠀⠀⢳⢿⣇⠀⠀⠀⠀⠈⢧⢹⣶⣶⣾⣿⣿⣿⣿⣿⣯⣷⣶⣶⣾⣾⡿⢿⣻⣯⣿⠟⠋⠀⠀⡜⡁⠀⠀⠀⢻⣿⠀⠀⠀⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢳⠀⡿⡇⠀⠀⠀⠀⠈⣯⢻⣷⣶⠖⠚⠉⠛⢷⡉⠉⠛⠻⢽⣿⣿⣿⣿⣟⢿⣿⡿⡿⣿⣾⡿⠋⠁⠀⠀⠀⣸⡼⠀⠀⠀⠀⠐⣻⠀⠀⠀⢸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠘⣇⣇⡇⠀⠀⠀⠀⠀⠘⢷⣿⣇⠀⣀⠴⠶⠾⢷⡄⠀⠀⠀⠹⣿⢿⡝⠿⢫⣿⣿⣾⠟⠁⠀⠀⠀⠀⠀⢨⣿⡏⠀⠀⠀⠀⠀⢿⡄⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠘⣿⠀⠀⠀⠀⠀⠀⠀⠈⣯⣿⣏⠁⠀⠀⠀⠀⠹⣄⠀⠀⠀⣿⣿⣇⣰⣿⠞⠋⠀⠀⠀⠀⠀⠀⠀⢐⣷⣫⡅⠀⠀⠀⠀⠀⢸⡆⠀⠀⠀⢹⡀⠀⠀⢀⣀⣀⣀⣀⣀⠀⠀
⠀⠀⠀⠘⠇⠀⠀⠀⠀⠀⠀⠀⠘⣇⠿⣷⣀⣠⠤⠞⠓⠛⣆⠀⠀⢸⣿⡟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⠀⠀⠀⠀⠀⠀⠘⣧⠀⠀⢀⣸⡧⠔⠛⠉⠀⠀⠀⠀⠈⠙⠳
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡌⣿⠋⠁⠀⠀⠀⢀⣘⣧⠀⠈⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢼⣿⡏⠀⠀⠀⠀⠀⢀⣀⣿⡴⠒⠋⠉⠀⠀⣠⣠⣤⡄⠀⠀⠀⣀⡄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⠛⢳⣤⣤⠖⠚⠉⠉⢉⣳⣄⣸⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠟⠃⠀⠀⣠⡴⠖⠋⠁⠀⠀⢀⣄⣴⣶⣿⣿⣿⣿⣶⢢⣤⣿⣿⣾
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⣸⣻⣀⡴⠾⣋⣉⣉⣡⣤⣿⣿⢿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠚⣾⣅⣠⠶⠋⠁⢀⣀⣴⣢⣞⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠋
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⠤⠤⣼⣿⠟⠁⠀⠀⠀⠈⠛⢿⣿⣿⣿⡇⢳⠀⠀⠀⠀⠀⠀⠀⣀⡴⠟⠉⠀⣠⣤⣴⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠁⠀⠀⢀
⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⢚⣵⣿⣿⣿⣫⣤⣶⣿⣷⣶⣦⣄⣀⣀⣬⣿⣿⣷⢤⠦⠤⠤⢤⣴⠶⠛⢉⣀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠀⠀⣀⣤⣤⣾⣷
]],
			},

			sections = {
				{
					section = "header",
				},
				-- {
				--   pane = 1,
				--   section = "terminal",
				--   -- cmd = "chafa -f symbols --symbols block --color-space rgb --colors 256 /home/nitin/Pictures/Wallpapers/govim.png",
				--   height = 27,
				--   padding = 1,
				-- },
				greeting,
				{
					pane = 1,
					icon = " ",
					section = "projects",
					title = "Projects",
					indent = 2,
					limit = 5,
					padding = 1,
				},
				{
					pane = 2,
					icon = " ",
					title = "Recent Files",
					section = "recent_files",
					indent = 2,
					limit = 5,
					padding = 1,
				},
				{
					pane = 2,
					icon = " ",
					desc = "Browse Repo",
					padding = 1,
					key = "b",
					action = function()
						Snacks.gitbrowse()
					end,
				},
				function()
					local in_git = Snacks.git.get_root() ~= nil
					local cmds = {
						{
							title = "Notifications",
							cmd = "gh notify -s -a -n5",
							action = function()
								vim.ui.open("https://github.com/notifications")
							end,
							key = "n",
							icon = " ",
							height = 5,
							enabled = true,
						},
						{
							pane = 2,
							section = "terminal",
							title = "Open Issues",
							cmd = "gh issue list -L 3",
							key = "i",
							action = function()
								vim.fn.jobstart("gh issue list --web", { detach = true })
							end,
							icon = " ",
							-- height = 7,
						},
						{
							pane = 2,
							section = "terminal",
							icon = " ",
							title = "Open PRs",
							cmd = "gh pr list -L 3",
							key = "P",
							action = function()
								vim.fn.jobstart("gh pr list --web", { detach = true })
							end,
							-- height = 7,
						},
						{
							pane = 2,
							section = "terminal",
							icon = " ",
							title = "Git Status",
							cmd = "git --no-pager status --short --branch",
							height = 8,
							padding = 1,
							enabled = function()
								return Snacks.git.get_root() ~= nil
							end,
						},
					}
					return vim.tbl_map(function(cmd)
						return vim.tbl_extend("force", {
							pane = 2,
							section = "terminal",
							enabled = in_git,
							padding = 1,
							ttl = 5 * 60,
							indent = 3,
						}, cmd)
					end, cmds)
				end,
				{ section = "startup" },
			},
		},
	},
}
