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

-- stylua: ignore
-- Inlay end hints
vim.keymap.set("n", "<leader>uH", function() require("lsp-endhints").toggle() end, { desc = "Toggle end inlay hints" })

-- Delete default floating terminal
vim.keymap.del("n", "<C-/>")
vim.keymap.del("n", "<C-_>")
vim.keymap.del("t", "<C-/>")
vim.keymap.del("t", "<C-_>")

-- stylua: ignore
vim.keymap.set("n", "<M-;>", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
-- stylua: ignore
vim.keymap.set("t", "<M-;>", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })

-- Comments - Because of how a terminal might be sending the input, need both / and _ keymaps
vim.keymap.set("n", "<C-/>", "gcc", { desc = "Comment line", remap = true })
vim.keymap.set("n", "<C-_>", "gcc", { desc = "Comment line", remap = true })
vim.keymap.set("v", "<C-/>", "gc", { desc = "Comment block", remap = true })
vim.keymap.set("v", "<C-_>", "gc", { desc = "Comment block", remap = true })
