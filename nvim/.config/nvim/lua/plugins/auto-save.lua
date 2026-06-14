-- some recommended exclusions. you can use `:lua print(vim.bo.filetype)` to
-- get the filetype string of the current buffer
local excluded_filetypes = {
  -- this one is especially useful if you use neovim as a commit message editor
  "gitcommit",
  -- most of these are usually set to non-modifiable, which prevents autosaving
  -- by default, but it doesn't hurt to be extra safe.
  "NvimTree",
  "Outline",
  "TelescopePrompt",
  "alpha",
  "dashboard",
  "lazygit",
  "neo-tree",
  "oil",
  "prompt",
  "toggleterm",
}

local excluded_filenames = {
  "do-not-autosave-me.lua",
}

local function save_condition(buf)
  if
    vim.tbl_contains(excluded_filetypes, vim.fn.getbufvar(buf, "&filetype"))
    or vim.tbl_contains(excluded_filenames, vim.fn.expand("%:t"))
  then
    return false
  end
  return true
end

return {
  "okuuva/auto-save.nvim",
  version = "^1.0.0", -- see https://devhints.io/semver, alternatively use '*' to use the latest tagged release
  keys = {
    { "<leader>n", "<cmd>ASToggle<CR>", desc = "Toggle auto-save" },
  },
  cmd = "ASToggle", -- optional for lazy loading on command
  opts = {
    -- your config goes here
    -- or just leave it empty :)
    trigger_events = { -- See :h events
      immediate_save = { "BufLeave", "FocusLost", "QuitPre", "VimSuspend" }, -- vim events that trigger an immediate save
      defer_save = { "InsertLeave", "TextChanged" }, -- vim events that trigger a deferred save (saves after `debounce_delay`)
      cancel_deferred_save = { "InsertEnter" }, -- vim events that cancel a pending deferred save
    },
    debounce_delay = 2000,
    condition = save_condition,
  },
}
