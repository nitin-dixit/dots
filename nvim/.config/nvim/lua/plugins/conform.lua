return {
	"stevearc/conform.nvim",
	optional = true,
	opts = function(_, opts)
		opts.formatters_by_ft.gohtmltmpl = { "prettier" }
		opts.formatters_by_ft.gotmpl = { "prettier" }
		opts.formatters.sqlfluff = {
			args = { "format", "--dialect=ansi", "-" },
		}
	end,
}
