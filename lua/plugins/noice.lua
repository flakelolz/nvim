return {
  "folke/noice.nvim",
  opts = {
    presets = {
      command_palette = false,
      lsp_doc_border = true,
    },
    cmdline = {
      view = "cmdline",
    },
    lsp = {
      hover = {
        silent = true,
      },
    },
  },
}
