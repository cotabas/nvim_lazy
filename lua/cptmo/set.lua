vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.inccommand = "nosplit"

-- vim.opt.termguicolors = true

vim.opt.scrolloff = 7

vim.opt.updatetime = 50

vim.opt.clipboard = 'unnamedplus'
vim.g.have_nerd_font = true

vim.cmd("let g:netrw_liststyle = 3") -- tree style

--I dunno this below came from my old lsp config..
--
--vim.diagnostic.config({
--  virtual_text = true,
--  signs = true,
--  update_in_insert = false,
--  underline = true,
--  severity_sort = false,
--  float = true,
--})
