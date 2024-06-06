return {

  -- Add themes
  {
    {
      "folke/tokyonight.nvim",
      -- enabled = false,
    },
    {
      "catppuccin/nvim",
      -- enabled = false,
    },
  },
  -- Configure LazyVim to load themes
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight-night",
      colorscheme = "catppuccin-mocha",
    },
  },
}
