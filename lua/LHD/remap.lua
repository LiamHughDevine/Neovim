vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

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
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fix navigation
--[[vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")--]]

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- My personal keymaps
-- Lets the lsp use control m, control n, may be wrong
-- vim.keymap.set("i", "<C-m>", "<nop>")
vim.keymap.set("n", "gg", "gg0")
vim.keymap.set("v", "gg", "gg0")
vim.keymap.set("n", "G", "G$")
vim.keymap.set("v", "G", "G$")
vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>")
vim.keymap.set("n", "<leader>dpr", function()
	require("dap-python").test_method()
end)

-- Formatting
vim.keymap.set("n", "<leader>f", "<cmd>Format<cr>")

-- Navigating tabline
vim.keymap.set("n", "<leader>]", "<cmd>TablineBufferNext<cr>")
vim.keymap.set("n", "<leader>[", "<cmd>TablineBufferPrev<cr>")

-- Diagnostics
vim.keymap.set("n", "<leader>dd", "<cmd>lua vim.diagnostic.open_float()<cr>")

-- Refactor
vim.keymap.set("n", "<leader>rf", vim.lsp.buf.rename, {noremap = true, silent = true})
