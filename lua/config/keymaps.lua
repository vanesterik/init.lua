vim.g.mapleader = " "
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Page up
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Page down
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>zz")
vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move line up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move line down
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
