---@type LazySpec
return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "styled-components/vim-styled-components",
  },
  {
    "ThePrimeagen/vim-be-good",
    cmd = { "VimBeGood" },
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {},
  },
  {
    "roobert/surround-ui.nvim",
    dependencies = {
      "kylechui/nvim-surround",
    },
    opts = {
      root_key = "S",
    },
  },
  {
    "stevearc/oil.nvim",
    cmd = { "Oil" },
    opts = {},
  },
  {
    "xiyaowong/transparent.nvim",
    cmd = {
      "TransparentEnable",
      "TransparentDisable",
      "TransparentToggle",
    },
  },
}
