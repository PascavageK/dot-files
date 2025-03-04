vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.autoindent = true   
vim.opt.smartindent = true

vim.opt.autoread = true
vim.opt.autowrite = false
vim.opt.autowriteall = false

vim.opt.backup = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.history = 20

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 15
vim.opt.signcolumn = "no"
vim.opt.colorcolumn = ""
vim.opt.isfname:append("@-@")

vim.g.mapleader = " "
