return {
  "neovim/nvim-lspconfig",
  opts = {
    -- Can toggle inlay hints with <leader>uh
    inlay_hints = { enabled = true },
    servers = {
      vtsls = {
        handlers = {
          ["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
            if result.diagnostics ~= nil then
              local idx = 1
              while idx <= #result.diagnostics do
                if result.diagnostics[idx].code == 80001 then
                  table.remove(result.diagnostics, idx)
                else
                  idx = idx + 1
                end
              end
            end
            vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
          end,
        },
      },
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
