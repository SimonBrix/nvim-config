-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local function vscode_monokai()
  local hl = vim.api.nvim_set_hl

  hl(0, "Normal", {
    fg = "#F8F8F2",
    bg = "#272822",
  })

  hl(0, "NormalNC", {
    fg = "#F8F8F2",
    bg = "#272822",
  })

  hl(0, "NormalFloat", {
    fg = "#F8F8F2",
    bg = "#272822",
  })

  hl(0, "SignColumn", {
    bg = "#272822",
  })

  hl(0, "FoldColumn", {
    bg = "#272822",
  })

  hl(0, "EndOfBuffer", {
    fg = "#272822",
    bg = "#272822",
  })

  hl(0, "CursorLine", {
    bg = "#3E3D32",
  })

  hl(0, "CursorColumn", {
    bg = "#3E3D32",
  })

  hl(0, "LineNr", {
    fg = "#90908A",
    bg = "#272822",
  })

  hl(0, "CursorLineNr", {
    fg = "#F8F8F2",
    bg = "#3E3D32",
    bold = true,
  })

  hl(0, "LspInlayHint", { fg = "#C5C5C5", italic = true })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = vscode_monokai,
})

vim.schedule(vscode_monokai)

local function apply_snacks_git_colors()
  local hl = vim.api.nvim_set_hl

  hl(0, "SnacksPickerGitStatusUntracked", { fg = "#F8F8F2" })
  hl(0, "SnacksPickerGitStatusModified", { fg = "#E6DB74" })
  hl(0, "SnacksPickerGitStatusAdded", { fg = "#A6E22E" })
  hl(0, "SnacksPickerGitStatusDeleted", { fg = "#F92672" })
end

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = apply_snacks_git_colors,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = apply_snacks_git_colors,
})

vim.schedule(apply_snacks_git_colors)
