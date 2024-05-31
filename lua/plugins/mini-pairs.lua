return {
  "echasnovski/mini.pairs",
  event = "VeryLazy",
  opts = {
    mappings = {
      ["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^%a&<\\].", register = { cr = false } },
    },
  },
}
