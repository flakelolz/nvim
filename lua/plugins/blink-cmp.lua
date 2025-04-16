return {
  "Saghen/blink.cmp",
  opts = {
    completion = {
      menu = { border = "rounded" },
      documentation = { window = { border = "rounded" } },
    },
    signature = { window = { border = "rounded" } },
    keymap = {
      ["<C-Space>"] = {},
      preset = "default",
      ["<C-K>"] = { "show", "show_documentation", "hide_documentation" },
    },
  },
}
