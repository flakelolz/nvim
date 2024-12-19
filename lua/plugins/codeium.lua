return {
  {
    "Exafunction/codeium.vim",
    enabled = false,
    event = "BufEnter",
    version = "1.8.37",
    config = function()
      vim.g.codeium_no_map_tab = true
      vim.keymap.set("i", "<M-;>", function()
        return vim.fn["codeium#Accept"]()
      end, {
        expr = true,
        noremap = true,
        desc = "Codeium Accept",
      })
    end,
  },
}
