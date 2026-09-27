return {
  {
    "tanvirtin/monokai.nvim",
    priority = 1000,
    lazy = false,

    config = function()
      require("monokai").setup({})

      vim.cmd.colorscheme("monokai")

      local hl = vim.api.nvim_set_hl

      -- VS Code built-in Monokai palette
      local bg = "#272822"
      local fg = "#F8F8F2"

      local comment = "#88846F"
      local string = "#E6DB74"
      local pink = "#F92672"
      local cyan = "#66D9EF"
      local green = "#A6E22E"
      local orange = "#FD971F"
      local purple = "#AE81FF"

      local line_bg = "#3E3D32"
      local selection = "#49483E"

      ----------------------------------------------------------------------
      -- Editor basics
      ----------------------------------------------------------------------

      hl(0, "Normal", { fg = fg, bg = bg })
      hl(0, "NormalNC", { fg = fg, bg = bg })
      hl(0, "NormalFloat", { fg = fg, bg = bg })

      hl(0, "CursorLine", { bg = line_bg })
      hl(0, "CursorColumn", { bg = line_bg })

      hl(0, "Visual", { bg = selection })

      hl(0, "LineNr", { fg = "#90908A", bg = bg })
      hl(0, "CursorLineNr", { fg = fg, bg = line_bg, bold = true })

      hl(0, "SignColumn", { bg = bg })
      hl(0, "FoldColumn", { bg = bg })

      ----------------------------------------------------------------------
      -- Classic Vim syntax groups
      ----------------------------------------------------------------------

      hl(0, "Comment", { fg = comment, italic = true })

      hl(0, "String", { fg = string })
      hl(0, "Character", { fg = string })

      hl(0, "Number", { fg = purple })
      hl(0, "Float", { fg = purple })
      hl(0, "Boolean", { fg = purple })
      hl(0, "Constant", { fg = purple })

      hl(0, "Keyword", { fg = pink })
      hl(0, "Statement", { fg = pink })
      hl(0, "Conditional", { fg = pink })
      hl(0, "Repeat", { fg = pink })
      hl(0, "Label", { fg = pink })
      hl(0, "Exception", { fg = pink })

      hl(0, "Type", { fg = cyan, italic = true })
      hl(0, "StorageClass", { fg = cyan, italic = true })
      hl(0, "Structure", { fg = cyan, italic = true })
      hl(0, "Typedef", { fg = cyan, italic = true })

      hl(0, "Function", { fg = green })

      hl(0, "Operator", { fg = pink })
      hl(0, "Delimiter", { fg = fg })

      ----------------------------------------------------------------------
      -- Treesitter
      ----------------------------------------------------------------------

      hl(0, "@comment", { fg = comment, italic = true })

      hl(0, "@string", { fg = string })
      hl(0, "@string.escape", { fg = purple })
      hl(0, "@character", { fg = string })

      hl(0, "@number", { fg = purple })
      hl(0, "@number.float", { fg = purple })
      hl(0, "@boolean", { fg = purple })
      hl(0, "@constant", { fg = purple })
      hl(0, "@constant.builtin", { fg = purple })

      hl(0, "@keyword", { fg = pink })
      hl(0, "@keyword.function", { fg = pink })
      hl(0, "@keyword.return", { fg = pink })
      hl(0, "@keyword.conditional", { fg = pink })
      hl(0, "@keyword.repeat", { fg = pink })
      hl(0, "@keyword.operator", { fg = pink })
      hl(0, "@keyword.import", { fg = pink })

      hl(0, "@operator", { fg = pink })

      hl(0, "@function", { fg = green })
      hl(0, "@function.call", { fg = green })
      hl(0, "@function.method", { fg = green })
      hl(0, "@function.method.call", { fg = green })
      hl(0, "@function.builtin", { fg = green })

      hl(0, "@type", { fg = cyan, italic = true })
      hl(0, "@type.builtin", { fg = cyan, italic = true })

      hl(0, "@constructor", { fg = cyan })

      -- VS Code Monokai commonly uses orange for parameters
      hl(0, "@variable.parameter", { fg = orange, italic = true })

      hl(0, "@variable", { fg = fg })
      hl(0, "@variable.member", { fg = fg })

      hl(0, "@property", { fg = fg })

      hl(0, "@punctuation.bracket", { fg = fg })
      hl(0, "@punctuation.delimiter", { fg = fg })

      ----------------------------------------------------------------------
      -- Rust-specific Treesitter groups
      ----------------------------------------------------------------------

      hl(0, "@type.rust", { fg = cyan, italic = true })
      hl(0, "@type.builtin.rust", { fg = cyan, italic = true })

      hl(0, "@function.rust", { fg = green })
      hl(0, "@function.call.rust", { fg = green })
      hl(0, "@function.method.rust", { fg = green })
      hl(0, "@function.method.call.rust", { fg = green })

      hl(0, "@variable.parameter.rust", { fg = orange, italic = true })

      hl(0, "@keyword.rust", { fg = pink })
      hl(0, "@keyword.function.rust", { fg = pink })
      hl(0, "@keyword.return.rust", { fg = pink })

      hl(0, "@number.rust", { fg = purple })
      hl(0, "@string.rust", { fg = string })

      ----------------------------------------------------------------------
      -- LSP semantic token groups
      ----------------------------------------------------------------------

      hl(0, "@lsp.type.function", { fg = green })
      hl(0, "@lsp.type.method", { fg = green })

      hl(0, "@lsp.type.parameter", { fg = orange, italic = true })

      hl(0, "@lsp.type.type", { fg = cyan, italic = true })
      hl(0, "@lsp.type.struct", { fg = cyan, italic = true })
      hl(0, "@lsp.type.enum", { fg = cyan, italic = true })
      hl(0, "@lsp.type.interface", { fg = cyan, italic = true })
      hl(0, "@lsp.type.typeParameter", { fg = cyan, italic = true })

      hl(0, "@lsp.type.enumMember", { fg = purple })

      hl(0, "@lsp.type.variable", { fg = fg })
      hl(0, "@lsp.type.property", { fg = fg })

      ----------------------------------------------------------------------
      -- Diagnostics
      ----------------------------------------------------------------------

      hl(0, "DiagnosticError", { fg = "#F44747" })
      hl(0, "DiagnosticWarn", { fg = "#CCA700" })
      hl(0, "DiagnosticInfo", { fg = "#75BEFF" })
      hl(0, "DiagnosticHint", { fg = "#B5CEA8" })

      ----------------------------------------------------------------------
      -- VS Code bracket pair colors
      ----------------------------------------------------------------------

      hl(0, "RainbowDelimiterYellow", {
        fg = "#FFD700",
      })

      hl(0, "RainbowDelimiterPurple", {
        fg = "#DA70D6",
      })

      hl(0, "RainbowDelimiterBlue", {
        fg = "#179FFF",
      })

      -- Explorer / Snacks
      hl(0, "SnacksPickerDir", { fg = "#A6E22E" })
      hl(0, "SnacksPickerFile", { fg = "#F8F8F2" })
      hl(0, "SnacksPickerPathHidden", { fg = "#75715E" })
      hl(0, "SnacksPickerGitStatusUntracked", { fg = "#F8F8F2" })

      -- Common file-tree groups
      hl(0, "Directory", { fg = "#66D9EF" })
      hl(0, "NeoTreeFileName", { fg = "#F8F8F2" })
      hl(0, "NeoTreeDirectoryName", { fg = "#66D9EF" })
      hl(0, "NeoTreeDirectoryIcon", { fg = "#66D9EF" })
      hl(0, "NeoTreeFileIcon", { fg = "#F8F8F2" })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai",
    },
  },

  {
    "HiPhish/rainbow-delimiters.nvim",
    event = { "BufReadPost", "BufNewFile" },

    config = function()
      vim.g.rainbow_delimiters = {
        highlight = {
          "RainbowDelimiterYellow",
          "RainbowDelimiterPurple",
          "RainbowDelimiterBlue",
        },
      }
    end,
  },
}
