return {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy", -- turns on clang-tidy checks as LSP diagnostics
    "--header-insertion=iwyu",
    "--completion-style=detailed",
    "--function-arg-placeholders",
    "--fallback-style=llvm",
  },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
  root_markers = {
    "compile_commands.json",
    "compile_flags.txt",
    ".clangd",
    ".git",
  },
}
