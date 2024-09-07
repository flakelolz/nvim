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
