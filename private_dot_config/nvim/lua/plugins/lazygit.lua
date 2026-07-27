local utils = require("utils")

vim.pack.add({
  -- The core lazygit plugin wrapper
  { src = utils.gh("kdheepak/lazygit.nvim") },
})

vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>", {
  silent = true,
  desc = "Toggle LazyGit",
})
