
-- spell chex
-- ok.. I was going to map spell check to leader z= but for some reason this turns it on always, but it only spell checks comments so that's fine I guess..
--
vim.keymap.set("n", "<leader>z=", vim.cmd "setlocal spell spelllang=en_us")

-- not as good as nerdtree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- yeah! not as quick as harpoon but super helpful
vim.keymap.set("n", "<C-d>", vim.cmd.bnext)
vim.keymap.set("n", "<C-a>", vim.cmd.bprev)

-- ＼（〇_ｏ）／
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- from the primeagen guy :
-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>fd", function() vim.lsp.buf.definition() end)

-- remaps for the tmux vim nav
vim.keymap.set("n", "<C-h>", vim.cmd.TmuxNavigateLeft) 
vim.keymap.set("n", "<C-l>", vim.cmd.TmuxNavigateRight) 
vim.keymap.set("n", "<C-j>", vim.cmd.TmuxNavigateDown) 
vim.keymap.set("n", "<C-k>", vim.cmd.TmuxNavigateUp) 
