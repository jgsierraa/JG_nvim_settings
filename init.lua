vim.opt.scrolloff = 8
vim.g.mapleader = " "
vim.wo.relativenumber = true
vim.opt.number = true
vim.opt.tabstop=4 
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.cmd.colorscheme("desert")
vim.keymap.set("n", "<leader>pv", ":Vex<CR>", {noremap = true, silent = true, desc = "Opens a new vertical explorer of current file"}) 
vim.keymap.set("n", "<leader><CR>", ":so ~/.config/nvim/init.lua<CR>", { desc = "Source the file"})

-- moving a line of code down or up
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down"})
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up"})

vim.keymap.set("v", "<A-j>", ":m .+1<CR>gv=gv", { desc = "Move line down"})
vim.keymap.set("v", "<A-k>", ":m .-2<CR>gv=gv", { desc = "Move line up"})


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
})

