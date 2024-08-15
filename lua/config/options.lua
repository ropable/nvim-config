-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Disable the mouse while in nvim
opt.mouse = ""
-- Set wildignore to ignore certain locations
opt.wildignore = "*.pyc,*/__pycache__/*,*/node_modules/*,*.venv/*,*/staticfiles/*,*/media/*"
