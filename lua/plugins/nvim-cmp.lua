local cmp = require("cmp")
return {
  "hrsh7th/nvim-cmp",
  opts = {
    window = {
      -- FIX: Borders don't work
      documentation = require("cmp").config.window.bordered(),
      completion = require("cmp").config.window.bordered({
        winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
      }),
    },
    mapping = {
      ["<CR>"] = cmp.config.disable,
      -- NOTE: Map Signature help while on insert mode somewhere else
      ["<C-K>"] = function()
        if cmp.visible_docs() then
          cmp.close_docs()
        else
          cmp.open_docs()
        end
      end,
    },
    view = {
      docs = {
        auto_open = false,
      },
    },
  },
}
