-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>ut", "<cmd>UndotreeToggle<cr>", { desc = "Toggle UndoTree" })

-- Replace

vim.keymap.set({ "n", "v" }, "<leader>r", [[:%s###g<Left><Left><left>]], { desc = "[r]eplace in buffer" })

-- Motions
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line(s) up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line(s) down" })

-- Add blank line
vim.keymap.set("n", "oo", "o<Esc>0", { desc = "Add blank line below" })
vim.keymap.set("n", "OO", "O<Esc>0", { desc = "Add blank line above" })

-- Quickly access the vim command line
vim.keymap.set("n", ";", ":", { desc = "Quickly access the vim command line" })
