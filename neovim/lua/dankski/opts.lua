-- [[ Theme ]]
vim.opt.syntax = "ON"
vim.opt.guicursor = ""
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.colorcolumn = "80"


vim.opt.wrap = false

-- [[ File Stuff]]
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.expandtab = true


-- [[ Editing ]]
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.nu = true
--vim.opt.relativenumber = true


-- [[ Search ]]
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50


-- use space as the leader key
vim.g.mapleader = " "
