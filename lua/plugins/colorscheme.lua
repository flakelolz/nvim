return {
  -- Add themes
  {
    {
      "catppuccin/nvim",
      name = "catppuccin",
      opts = {
        transparent_background = true,
        no_italic = true,
        no_bold = true,
        integrations = {},
      },
      -- enabled = false,
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
