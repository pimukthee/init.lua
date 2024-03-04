vim.keymap.set("n", "<C-n>", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "p", '"_dP')

vim.keymap.set("n", "<leader>rp", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>w", ':lua vim.diagnostic.open_float(0, { scope = "line" })<CR>')

vim.keymap.set("n", "<Esc>", "<cmd> noh <CR>")


vim.keymap.set("n", "<leader>tn", "<cmd> bnext <CR>")
vim.keymap.set("n", "<leader>tp", "<cmd> bprev <CR>")
vim.keymap.set("n", "<leader>tq", "<cmd> bdel <CR>")
