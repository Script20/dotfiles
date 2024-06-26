vim.g.mapleader = " "
print("remap")
vim.keymap.set("n", "<leader>la", vim.cmd.Ex, { desc = "Netrw" })
vim.keymap.set("n", "<leader>u", ":UndotreeShow<CR>", { desc = "Undotree GUI" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "System clipboard copy" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Neovim clipboard copy" })

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], { desc = "Delete to void" })

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>FF", vim.lsp.buf.format, { desc = "Format file" })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Edit everything matching" })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end, { desc = "Source current file" })
