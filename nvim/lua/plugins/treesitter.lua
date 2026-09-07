---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "typescript",
      "tsx",
      "go",
      "gomod",
      "gowork",
      "gosum",
    },
  },
}
