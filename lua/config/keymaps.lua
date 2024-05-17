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
-- FIX: doesn't work
vim.keymap.set("n", "<M-/>", "gcc", { desc = "Comment line" })
