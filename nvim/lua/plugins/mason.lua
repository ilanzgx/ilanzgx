---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "typescript-language-server",
        "stylua",
        "prettier",
        "debugpy",
        "tree-sitter-cli",
      },
    },
  },
}
