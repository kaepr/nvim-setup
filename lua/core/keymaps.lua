-- Base necessary keymaps

vim.g.mapleader = " "

vim.keymap.set('n', "<leader>h", ":nohlsearch<CR>")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Autocenters using zz
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- copy entire file
vim.keymap.set("n", "<leader>ay", "<cmd>%y+<cr>")

-- delete entire file
vim.keymap.set("n", "<leader>ad", "<cmd>%d+<cr>")

-- compile and run current buffer
-- % is the current buffer filename
-- %:r is the buffer filename without extension
vim.keymap.set("n", "<F5>", "<cmd>:!g++ -std=c++17 -O2 % -o %:r && ./%:t:r < input.txt > output.txt<CR>")

-- split windows for CP setup
vim.keymap.set("n", "<F6>", "<cmd>:vsp input.txt<cr><C-w><C-r><cmd>:sp output.txt<cr><C-w><C-r><C-w>h")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

