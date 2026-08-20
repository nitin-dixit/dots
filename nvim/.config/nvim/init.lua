-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd([[
  hi lualine_c_normal guibg=none
  hi lualine_x_normal guibg=none
  hi Normal guibg=none ctermbg=none
  hi NormalFloat guibg=none ctermbg=none
  hi LineNr guifg=#585b70 guibg=none ctermbg=none
  hi CursorLineNr guifg=#cba6f7 guibg=none gui=bold
  hi Folded guibg=none ctermbg=none
  hi NonText guibg=none ctermbg=none
  hi SpecialKey guibg=none ctermbg=none
  hi VertSplit guibg=none ctermbg=none
  hi SignColumn guibg=none ctermbg=none
  hi EndOfBuffer guibg=none ctermbg=none
  " hi StatusLine guibg=#000 guifg=#cba6f7
  hi NormalNC guibg=none ctermbg=none
  hi DiagnosticVirtualTextWarn none
  hi DiagnosticVirtualTextError none
  hi DiagnosticVirtualTextInfo none
  hi DiagnosticVirtualTextHint none

  hi FloatBorder guibg=none
  hi IblScope guifg=#585b70

  hi TabLineSel guibg=#a6e3a1 guifg=#11111b
  hi TabLine  guifg=#cdd6f4
  hi UfoFoldedEllipsis guifg=#181825 guibg=#cba6f7 gui=bold
  ]])
