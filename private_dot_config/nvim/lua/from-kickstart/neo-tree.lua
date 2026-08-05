local utils = require("utils")

-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

vim.pack.add({
  { src = utils.gh("nvim-neo-tree/neo-tree.nvim"), version = vim.version.range("*") },
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
})

vim.keymap.set("n", "\\", "<Cmd>Neotree reveal<CR>", { desc = "NeoTree reveal", silent = true })

require("neo-tree").setup({
  close_if_last_window = true,
  filesystem = {
    window = {
      position = "right",
      mappings = {
        ["\\"] = "close_window",
      },
    },
  },
  event_handlers = {
    {
      event = "neo_tree_buffer_enter",
      handler = function()
        -- For absolute line numbers:
        vim.opt_local.number = true

        -- For relative line numbers (recommended for jumping):
        vim.opt_local.relativenumber = true
      end,
    },
  },
})
