local quotes = {
  "Stay curious.",
  "Build something useful today.",
  "Small improvements compound.",
  "Code. Learn. Repeat.",
  "Progress beats perfection.",
}

local greeting = function()
  local hour = tonumber(os.date("%H"))
  local username = os.getenv("USER") or "friend"

  local greet = (
    hour < 12 and "🌅 Good Morning"
    or hour < 18 and "🌞 Good Afternoon"
    or hour < 21 and "🌆 Good Evening"
    or "😴 Good Night"
  )

  return {
    {
      text = greet .. ", " .. username,
      align = "center",
      hl = "Special",
    },
    {
      text = quotes[math.random(#quotes)],
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
      width = 70,
      pane_gap = 10,
      row = nil,
      sections = {
        {
          pane = 1,
          section = "terminal",
          cmd = "chafa -f symbols --symbols block --color-space rgb --colors 256 /home/nitin/Pictures/Wallpapers/govim.png",
          height = 27,
          padding = 1,
        },
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
