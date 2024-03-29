local opts = { noremap = true, silent = true }
-- t
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.oscyank_max_length = 10000000

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap("n", "<leader>js", "<cmd>%!python -m json.tool<cr>", opts)
-- Better window navigation
keymap("n", "<leader>sh", "<cmd>split<cr>", opts)
keymap("n", "<leader>sv", "<cmd>vs<cr>", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "<leader>nh", ":silent noh<cr>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
keymap('n', '<leader>be', "<cmd>wa<cr><cmd>BufferLineSortByExtension<CR>", opts)


-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)
keymap("i", "<C-l>", "<ESC><cmd> lua require'luasnip'.unlink_current()<cr>la", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)


-- Save and exit
keymap('n', "<leader>qq", ":qa!<cr>", opts)
keymap('n', "<leader>qz", ":q!<cr>", opts)
keymap("n", "<leader>z", ":q<cr>", opts)
keymap("n", "<leader>w", ":w<cr>", opts)
keymap("n", "<leader>bd", ":bd!<cr>", opts)
keymap("n", "<leader>bw", ":bw<cr>:bd<cr>", opts)
keymap("n", "<leader>ba", ":%bd!|e#|bd#<cr>", opts) --close all buffers
keymap("n", "<leader>be", ":bufdo e<cr>", opts)
keymap("n", "<leader>ww", ":wa<cr>:qa!<cr>", opts)
keymap("n", "<leader>wa", ":wa<cr>", opts)

-- file explore
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>gd", "<cmd>Telescope live_grep<cr>", opts) -- search cmd all file except .gitignore
keymap("n", "<leader>go", "<cmd>lua require'telescope.builtin'.live_grep({grep_open_files=true})<cr>", opts) -- search open file 
keymap("n", "<leader>gc", "<cmd>w<cr><cmd>lua require'telescope.builtin'.live_grep({search_dirs={vim.fn.expand('%:p')}})<cr>", opts) -- search current buffer
keymap('n', '<leader>bb', "<cmd>Telescope buffers<cr>", opts)

-- register

-- insert_mode
-- keymap("i", '<C-n>', '<ESC>o', opts)

-- copy with ssh
keymap("v", '<leader>c', ':OSCYank<cr>', opts)


-- golang
keymap("n", '<leader>tg', ":TagbarToggle<cr>",opts)

-- easymove
keymap('v', '<C-l>', '10zl', opts)
keymap('v', '<C-h>', '10zh', opts)
keymap('i', '<C-e>', '<ESC>A', opts)

-- toggle
keymap("n", '<leader>tl', ":lua _lazygit_toggle()<cr>", opts)
keymap('n', '<leader>th', ":lua _htop()<cr>", opts)

-- hop
keymap('n', '<leader>hf', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", opts)
keymap('n', '<leader>hd', "<cmd>lua require'hop'.hint_char2()<cr>", opts)
keymap('n', '<leader>hl', ':HopLine<cr>', opts)
keymap('n', '<leader>hw', ':HopWord<cr>', opts)


-- map
keymap('n',  '<leader>rc', ':w<cr>:!clang % -o out<cr>:ToggleTerm<cr>./out<cr>', opts)
keymap('n',  '<leader>rp', ':w<cr>:!clang++ % -o out<cr>:ToggleTerm<cr>./out<cr>', opts)

keymap("n", "<leader>sc","<cmd>Neoformat<cr><cmd>w<cr>", opts)
keymap("n", "<D-z>",":q<cr>", opts)

keymap("n", "<leader>pd", "<cmd>lua require'user.lsp-ext'.peek_definition()<cr>", opts)

