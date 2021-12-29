local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opts)

--vim.api.nvim_set_keymap("n", "<leader>e", ":Lex 30<cr>", opts)
--vim.api.nvim_set_keymap("n", "<leader>e", ":NERDTreeToggle<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

vim.api.nvim_set_keymap("n", "<S-l>", ":bnext<cr>", opts)
vim.api.nvim_set_keymap("n", "<S-h>", ":bprevious<cr>", opts)

--vim.api.nvim_set_keymap("n", "//", ":noh<cr>", opts)

vim.api.nvim_set_keymap("v", "<", "<gv", opts)
vim.api.nvim_set_keymap("v", ">", ">gv", opts)

vim.api.nvim_set_keymap("v", "J", ":m '>+1<cr>gv=gv", opts)
vim.api.nvim_set_keymap("v", "K", ":m '<-2<cr>gv=gv", opts)

vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>", opts)
--vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({}))<cr>", opts)
--vim.api.nvim_set_keymap("n", "<leader>d", "<cmd>lua require'telescope.builtin'.diagnostics(require('telescope.themes').get_dropdown({}))<cr>", opts)

vim.api.nvim_set_keymap("n", "<leader>T", "<cmd>TagbarToggle<cr>", opts)

vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>DashboardFindHistory<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>DashboardFindFile<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>tc", "<cmd>DashboardChangeColorscheme<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>fa", "<cmd>DashboardFindWord<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>DashboardJumpMark<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>cn", "<cmd>DashboardNewFile<cr>", opts)

--vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>LazyGit<cr>", opts)
