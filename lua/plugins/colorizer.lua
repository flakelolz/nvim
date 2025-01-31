return {
  "NvChad/nvim-colorizer.lua",
  ft = { "css", "scss", "html", "javascript", "javascriptreact", "typescript", "typescriptreact" },
  opts = {
    filetypes = {
      "css",
      "scss",
      "html",
      "javascript",
      "typescript",
      javascriptreact = { mode = "background" },
      typescriptreact = { mode = "background" },
    },
    user_default_options = {
      tailwind = true,
      mode = "virtualtext",
      css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
    },
  },
}
