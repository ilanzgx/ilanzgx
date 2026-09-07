return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
  init = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      desc = "Open Neo-tree on startup",
      callback = function()
        vim.cmd("Neotree show")
      end,
    })
  end,
}