---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    colorscheme = "catppuccin-mocha",
    highlights = {
      init = {
        Cursor = { fg = "#1e1e2e", bg = "#ffffff", bold = true },
        iCursor = { fg = "#1e1e2e", bg = "#ffffff", bold = true },
        TermCursor = { fg = "#1e1e2e", bg = "#ffffff", bold = true },
        TermCursorNC = { fg = "#1e1e2e", bg = "#ffffff", bold = true },
      },
    },
    icons = {
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
