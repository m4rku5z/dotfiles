return {
  cmd = { "ruff", "server" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git" },
  init_options = {
    settings = {
      lint = { enable = true },
      format = { enable = true },
      organizeImports = true,
      codeAction = {
        disableRuleComment = { enable = true },
        fixViolation = { enable = true },
      },
    },
  },
  -- Ruff has no real type info — let pyrefly own hover so they don't fight
  on_attach = function(client)
    client.server_capabilities.hoverProvider = false
  end,
}
