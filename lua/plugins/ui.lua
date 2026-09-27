return {
  {
    "tanvirtin/monokai.nvim",
    priority = 1000,
    lazy = false,
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
