vim.api.nvim_set_keymap('n', '<leader>rc', ':RunCode<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
-- vim.api.nvim_set_keymap('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
require('code_runner').setup {
	term = {
		position = "float",
		size = 20,
		mode = "startinsert",
    toggleTerm = true
	},
}
