return {
  "neovim/nvim-lspconfig",
  opts = {
    -- Disable inlay hints by default but can still enable them with <leader>uh
    inlay_hints = { enabled = false },
    servers = {
      pyright = {
        settings = {
          python = {
            analysis = {
              -- Disable type checking for pyright
              -- Change vim.g.lazyvim_python_lsp to "basedpyright" for strict type checking
              typeCheckingMode = "off",
            },
          },
        },
      },
    },
  },
}
