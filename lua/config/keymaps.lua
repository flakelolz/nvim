-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Centers cursor when doing this vim motions
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump Up" })
vim.keymap.set("n", "<C-o>", "<C-o>zz", { desc = "Jump Back" })
vim.keymap.set("n", "<C-i>", "<C-i>zz", { desc = "Jump Forward" })
-- Leaves cursor at the same location instead of the end of the line
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join next line" })
-- Comments
vim.keymap.set("n", "<M-/>", "gcc", { desc = "Comment line", remap = true })
vim.keymap.set("v", "<M-/>", "gc", { desc = "Comment block", remap = true })
-- Paste without copying to yank register
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Better paste" })
-- stylua: ignore
-- Inlay end hints
vim.keymap.set("n", "<leader>uH", function() require("lsp-endhints").toggle() end, { desc = "Toggle end inlay hints" })
-- Command runner
vim.keymap.set("n", "<leader>rs", "<cmd>CommandRunnerSet<cr>", { desc = "Set commands" })
vim.keymap.set("n", "<leader>ra", "<cmd>CommandRunnerRunAll<cr>", { desc = "Run all commands" })
vim.keymap.set("n", "<leader>r1", "<cmd>CommandRunnerRun 1<cr>", { desc = "Run command 1" })
vim.keymap.set("n", "<leader>r2", "<cmd>CommandRunnerRun 1<cr>", { desc = "Run command 2" })
vim.keymap.set("n", "<leader>r3", "<cmd>CommandRunnerRun 1<cr>", { desc = "Run command 3" })
-- Tailwind fold
vim.keymap.set("n", "<leader>ut", "<cmd>TailwindFoldToggle<cr>", { desc = "Toggle tailwind fold" })

-- Multicursor
local mc = require("multicursor-nvim")
-- Add cursors above/below the main cursor.
vim.keymap.set({ "n", "v" }, "<c-up>", function()
  mc.addCursor("k")
end)
vim.keymap.set({ "n", "v" }, "<c-down>", function()
  mc.addCursor("j")
end)

-- Add a cursor and jump to the next word under cursor.
vim.keymap.set({ "n", "v" }, "<c-n>", function()
  mc.addCursor("*")
end)

-- Jump to the next word under cursor but do not add a cursor.
vim.keymap.set({ "n", "v" }, "<c-s>", function()
  mc.skipCursor("*")
end)

-- Rotate the main cursor.
vim.keymap.set({ "n", "v" }, "<c-left>", mc.nextCursor)
vim.keymap.set({ "n", "v" }, "<c-right>", mc.prevCursor)

-- Delete the main cursor.
vim.keymap.set({ "n", "v" }, "<c-x>", mc.deleteCursor)

-- Add and remove cursors with control + left click.
vim.keymap.set("n", "<c-leftmouse>", mc.handleMouse)

vim.keymap.set({ "n", "v" }, "<c-q>", function()
  if mc.cursorsEnabled() then
    -- Stop other cursors from moving.
    -- This allows you to reposition the main cursor.
    mc.disableCursors()
  else
    mc.addCursor()
  end
end)

vim.keymap.set("n", "<esc>", function()
  if not mc.cursorsEnabled() then
    mc.enableCursors()
  elseif mc.hasCursors() then
    mc.clearCursors()
  else
    -- Default <esc> handler.
  end
end)

-- Align cursor columns.
vim.keymap.set("n", "<c-a>", mc.alignCursors)

-- Split visual selections by regex.
vim.keymap.set("v", "S", mc.splitCursors)

-- Append/insert for each line of visual selections.
vim.keymap.set("v", "I", mc.insertVisual)
vim.keymap.set("v", "A", mc.appendVisual)

-- match new cursors within visual selections by regex.
vim.keymap.set("v", "M", mc.matchCursors)

-- Rotate visual selection contents.
vim.keymap.set("v", "<leader>t", function()
  mc.transposeCursors(1)
end)
vim.keymap.set("v", "<leader>T", function()
  mc.transposeCursors(-1)
end)

-- Customize how cursors look.
vim.api.nvim_set_hl(0, "MultiCursorCursor", { link = "Cursor" })
vim.api.nvim_set_hl(0, "MultiCursorVisual", { link = "Visual" })
vim.api.nvim_set_hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
vim.api.nvim_set_hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
