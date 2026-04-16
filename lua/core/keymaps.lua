-- leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- exit insert mode quickly
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode quickly" })

-- file / save
vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equalize splits" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" })

-- move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- keep cursor centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without overwriting register
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("v", "p", '"_dp')

-- clear search highlight
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search highlight" })

-- Tabs Management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tj", "<cmd>tabn<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<leader>tk", "<cmd>tabp<CR>", { desc = "Previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "List buffers" })
