-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- General keymaps
map("n", "<leader>wq", ":wq<CR>", { desc = "Save and quite window" }) -- save and quit
map("n", "<leader>qq", ":q!<CR>", { desc = "Quit without saving" }) -- quit without saving
map("n", "<leader>ww", ":w<CR>", { desc = "Save window" }) -- save
map("n", "<leader>wa", ":wa<CR>", { desc = "Save all" }) -- save all

-- Map jk and kj to <Esc> (insert mode only)
map("i", "jk", "<Esc>", { desc = "<Escape>" })
map("i", "kj", "<Esc>", { desc = "<Escape>" })

-- Tab management
map("n", "<leader>to", ":tabnew<CR>") -- open a new tab
map("n", "<leader>tc", ":tabclose<CR>") -- close a tab
map("n", "<leader>tn", ":tabn<CR>") -- next tab
map("n", "<leader>tp", ":tabp<CR>") -- previous tab
map("n", "<leader>te", ":tabedit ") -- tabedit
