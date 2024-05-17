return {

  -- Add themes
  {
    {
      "folke/tokyonight.nvim",
      enabled = false,
    },
  },
  -- Configure LazyVim to load themes
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
