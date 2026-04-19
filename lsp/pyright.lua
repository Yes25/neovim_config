return {
  cmd = { vim.fn.stdpath("data") .. "/mason/bin/pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", "pyrightconfig.json", "setup.py", ".git" },
  on_attach = function(client, bufnr)
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
  end,
  settings = {
    python = {
      analysis = {
        inlayHints = {
          variableTypes = true,
          returnTypes = true,
          functionReturnTypes = true,
          callArgumentNames = true,
        }
      }
    }
  }
}
