local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Easyalign
keymap("n", "ga", "<Plug>(EasyAlign)", silent)
keymap("x", "ga", "<Plug>(EasyAlign)", silent)

-- Lazygit
keymap("n", "<leader>gg", ":LazyGit<CR>", silent)
