return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft.gohtmltmpl = { "prettier" }
    opts.formatters_by_ft.gotmpl = { "prettier" }
  end,
}
