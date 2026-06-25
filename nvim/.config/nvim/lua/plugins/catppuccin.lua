return {
	"catppuccin/nvim",
	lazy = true,
	name = "catppuccin",
	opts = {
		transparent = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
		-- color_overrides = {
		-- 	all = {
		-- 		base = "#000000",
		-- 	},
		-- },
		-- highlight_overrides = {
		-- 	mocha = function(mocha)
		-- 		return {
		-- 			LineNr = {
		-- 				fg = "#14161B",
		-- 			},
		-- 			LineNrAbove = {
		-- 				fg = "#14161B",
		-- 			},
		--
		-- 			LineNrBelow = {
		-- 				fg = "#14161B",
		-- 			},
		-- 			CursorLineNr = {
		-- 				fg = mocha.yellow,
		-- 				style = { "bold" },
		-- 			},
		-- 		}
		-- 	end,
		-- },
		custom_highlights = function(colors)
			return {
				-- Clear backgrounds for Treesitter Context
				TreesitterContext = { bg = "NONE" },
				TreesitterContextLineNumber = { bg = "NONE" },
				TreesitterContextSeparator = { bg = "NONE" },
			}
		end,
		lsp_styles = {
			underlines = {
				errors = { "undercurl" },
				hints = { "undercurl" },
				warnings = { "undercurl" },
				information = { "undercurl" },
			},
		},
		integrations = {
			aerial = true,
			alpha = true,
			cmp = true,
			dashboard = true,
			flash = true,
			fzf = true,
			grug_far = true,
			gitsigns = true,
			headlines = true,
			illuminate = true,
			indent_blankline = { enabled = true },
			leap = true,
			lsp_trouble = true,
			mason = true,
			mini = true,
			navic = { enabled = true, custom_bg = "lualine" },
			neotest = true,
			neotree = true,
			noice = true,
			notify = true,
			blink_cmp = true,
			snacks = {
				enabled = true,
				indent_scope_color = "",
			},
			telescope = true,
			treesitter_context = true,
			which_key = true,
		},
		auto_integrations = true,
	},
	specs = {
		{
			"akinsho/bufferline.nvim",
			optional = true,
			opts = function(_, opts)
				if (vim.g.colors_name or ""):find("catppuccin") then
					opts.highlights = require("catppuccin.special.bufferline").get_theme()
				end
			end,
		},
	},
}
