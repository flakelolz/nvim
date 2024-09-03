return {
  "neovim/nvim-lspconfig",
  opts = {
    -- Can toggle inlay hints with <leader>uh
    inlay_hints = { enabled = true },
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
