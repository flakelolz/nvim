return {
  -- Add themes
  {
    {
      "folke/tokyonight.nvim",
      -- enabled = false,
    },
    {
      "catppuccin/nvim",
      name = "catppuccin",
      opts = {
        transparent_background = true,
        no_italic = true,
        no_bold = false,
        integrations = {
          blink_cmp = true,
        },
      },
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
