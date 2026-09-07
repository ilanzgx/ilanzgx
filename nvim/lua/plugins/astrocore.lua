---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 },
      autopairs = true,
      cmp = true,
      diagnostics = { virtual_text = true, virtual_lines = false },
      highlighturl = true,
      notifications = true,
    },
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    options = {
      opt = {
        relativenumber = false,
        number = true,
        spell = false,
        signcolumn = "yes",
        wrap = false,
        guicursor = "n-v-c:block-Cursor,i-ci-ve:block-iCursor,r-cr:hor20,o:hor50",
      },
      g = {},
    },
    mappings = {
      n = {
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },
        ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        ["<Leader>ss"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Search and Replace RegExp" },
        ["<C-p>"] = {
          function()
            if Snacks and Snacks.picker then
              Snacks.picker.files()
            else
              require("telescope.builtin").find_files()
            end
          end,
          desc = "Find files",
        },
        ["<C-d>"] = { "<C-d>zz", desc = "Scroll down and center" },
        ["<C-u>"] = { "<C-u>zz", desc = "Scroll up and center" },
        ["n"] = { "nzzzv", desc = "Next search result and center" },
        ["N"] = { "Nzzzv", desc = "Previous search result and center" },
        ["<Leader>uT"] = { "<cmd>TransparentEnable<cr>", desc = "Enable background transparency" },
      },
      v = {
        ["p"] = { '"_dP', desc = "Paste without overwriting clipboard" },
        ["<"] = { "<gv", desc = "Indent left" },
        [">"] = { ">gv", desc = "Indent right" },
      },
      x = {
        ["J"] = { ":m '>+1<cr>gv=gv", desc = "Move lines down" },
        ["K"] = { ":m '<-2<cr>gv=gv", desc = "Move lines up" },
        ["<A-J>"] = { ":m '>+1<cr>gv=gv", desc = "Move lines down" },
        ["<A-K>"] = { ":m '<-2<cr>gv=gv", desc = "Move lines up" },
      },
    },
  },
}
