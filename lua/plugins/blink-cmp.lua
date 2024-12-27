return {
  "Saghen/blink.cmp",
  opts = {
    completion = {
      menu = {
        border = "rounded",
      },
      documentation = {
        window = {
          border = "single",
        },
      },
    },
    keymap = {
      ["<C-Space>"] = {},
      preset = "default",
      ["<C-K>"] = { "show", "show_documentation", "hide_documentation" },
    },
  },
}
