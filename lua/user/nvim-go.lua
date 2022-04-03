-- require('go').setup()
vim.cmd [[
  augroup auto_import
    autocmd!
  autocmd BufWritePre (InsertLeave?) <buffer> lua vim.lsp.buf.formatting_sync(nil,500) augroup end
]]
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
require('go').setup()

-- vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').gofmt() ]], false)
-- vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
--
-- vim.api.nvim_exec([[ autocmd BufWritePre (InsertLeave?) <buffer> lua vim.lsp.buf.formatting_sync(nil,500)]], false)
-- require("go.format").goimport()
-- vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').gofmt() ]], false)
-- vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)

-- -- vim.g.go_bin_path = '$GOPATH/bin'
-- -- vim.g.go_highlight_types = 1
-- -- vim.g.go_highlight_fields = 1
-- -- vim.g.go_highlight_functions = 1
-- -- vim.g.go_highlight_function_calls = 1
-- -- vim.g.go_highlight_extra_types = 1
-- -- vim.go_highlight_generate_tags = 1
-- --


--
