return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "html-lsp",
      "css-lsp",
      -- "zls",
      -- "mypy",
      -- "ruff",
      -- "sqlfmt",
    })
  end,
}
