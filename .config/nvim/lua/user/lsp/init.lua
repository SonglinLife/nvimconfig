-- local status_ok, _ = pcall(require, "lspconfig")
-- if not status_ok then
-- 	return
-- end
--
-- require("user.lsp.lsp-installer")
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- require "user.lsp.configs"
require("user.lsp.lsp-installer")
-- require'lspconfig'.clangd.setup{
--   cmd={"/Users/wusonglin/.local/share/nvim/lsp_servers/clangd/clangd/bin/clangd"}
-- }
require("user.lsp.handlers").setup()
-- require "user.lsp.null-ls"
