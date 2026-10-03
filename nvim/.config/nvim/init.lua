-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd([[
  hi lualine_c_normal guibg=none
  hi lualine_x_normal guibg=none
  hi Normal guibg=none ctermbg=none
  hi NormalFloat guibg=none ctermbg=none
  hi LineNr guifg=#000 guibg=none ctermbg=black
  hi CursorLineNr guifg=#a6e3a1  guibg=none gui=bold
  hi Folded guibg=none ctermbg=none
  hi NonText guibg=none ctermbg=none
  hi SpecialKey guibg=none ctermbg=none
  hi VertSplit guibg=none ctermbg=none
  hi SignColumn guibg=none ctermbg=none
  hi EndOfBuffer guibg=none ctermbg=none
  hi StatusLine guibg=#000 guifg=#cba6f7
  hi NormalNC guibg=none ctermbg=none
  hi DiagnosticVirtualTextWarn none
  hi DiagnosticVirtualTextError none
  hi DiagnosticVirtualTextInfo none
  hi DiagnosticVirtualTextHint none

  hi FloatBorder guibg=none
  " hi IblScope guifg=#585b70

  hi TabLineSel guibg=#a6e3a1 guifg=#11111b
  " hi TabLine  guifg=#cdd6f4
  hi UfoFoldedEllipsis guifg=#181825 guibg=#cba6f7 gui=bold
  ]])
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#cba6f7" })
-- vim.api.nvim_set_hl(0, "Cursor", { fg = "#000000", bg = "#cba6f7" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "none", underline = true })
