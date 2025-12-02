vim.opt.scrolloff = 8
vim.g.mapleader = " "
vim.wo.relativenumber = true
vim.opt.number = true
vim.opt.tabstop=4 
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab = true
vim.opt.smartindent = true
-- Use ripgrep for :grep and :vimgrep commands
vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "%f:%l:%c:%m"

vim.keymap.set("n", "<leader>pv", ":Vex<CR>", {noremap = true, silent = true, desc = "Opens a new vertical explorer of current file"}) 

vim.keymap.set("n", "<C-p>", ":GFiles<CR>", {desc = "Opens GFiles from fzf"})
vim.keymap.set("n", "<leader>pf", ":Files<CR>", {desc = "Opens Files from fzf"})

vim.keymap.set("n", "<C-j>", ":cnext<CR>", {desc = "next item in quickfix list"})
vim.keymap.set("n", "<C-k>", ":cprev<CR>", {desc = "previous item in quickfix list"})
vim.keymap.set("n", "<leader>j", "10j", {desc = "descend 10"})
vim.keymap.set("n", "<leader>k", "10k", {desc = "up 10"})

-- moving a line of code down or up
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down"})
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up"})
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line down"})
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line up"})

vim.keymap.set("n", "<leader>y", '"+y', { desc = "gets ready to yank to register +"})
vim.keymap.set("v", "<leader>y", '"+y', { desc = "yank to register +"})
vim.keymap.set("n", "<leader>Y", 'gg"+yG', { desc = "yanks file"})
vim.keymap.set("v", "<leader>p", '"_dP', { desc = "paste data deleting selection without losing yank"})

-- Bootstrap lazy.nvim if it's not already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
 vim.fn.system({
   "git",
   "clone",
   "--filter=blob:none",
   "https://github.com/folke/lazy.nvim.git",
   "--branch=stable", -- latest stable release
   lazypath,
 })
end
vim.opt.rtp:prepend(lazypath)

-- Setup plugins
require("lazy").setup({
 {
   "ThePrimeagen/vim-be-good",
   cmd = "VimBeGood", -- Lazy-load when you run :VimBeGood
 },
 {
     "junegunn/fzf.vim",
     dependencies = { "junegunn/fzf" }
 },
 {
     { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
 },
 {
    'numToStr/Comment.nvim',
    opts = {
    }
 }

})

vim.cmd.colorscheme("catppuccin-mocha")
