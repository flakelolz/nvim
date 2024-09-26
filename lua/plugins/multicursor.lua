return {
  "jake-stewart/multicursor.nvim",
  branch = "1.0",
  event = "BufEnter",
  config = function()
    local mc = require("multicursor-nvim")

    mc.setup()
  end,
}
