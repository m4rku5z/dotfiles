local utils = require("utils")

vim.pack.add({
  -- The core lazygit plugin wrapper
  { src = utils.gh("lervag/vimtex") },
})

vim.g.vimtex_view_method = "skim"
vim.g.vimtex_compiler_method = "latexmk"

vim.g.vimtex_compiler_latexmk = {
  continuous = 1,
  callback = 1,
  executable = "latexmk",
  options = {
    "-pdf",
    "-interaction=nonstopmode",
    "-synctex=1",
    "-file-line-error",
  },
}
