local M = {}
require'colorizer'.setup()
local set_hl = vim.api.nvim_set_hl

function M.setup()
  -- token
  -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/lua/nvim-treesitter/highlight.lua
  set_hl(0, "LspParameter", { fg = "#ef9062" })
  set_hl(0, "LspType", { fg = "#64b9fb" })
  -- set_hl(0, "LspParameter", { link = "TSParameter" })
  -- set_hl(0, "LspType", { link = "TSType" })
  set_hl(0, "LspClass", { fg = "#a8e6cf" })
  set_hl(0, "LspComment", { fg="#808080" })
  set_hl(0, "LspDecorator", { fg = "#808080" })
  -- set_hl(0, "LspEnum", { link = "TSType" })
  -- set_hl(0, "LspEnumMember", { link = "TSParameter" })
  -- set_hl(0, "LspEvent", { link = "TSProperty" })
  set_hl(0, "LspFunction", { fg="#f75990"})
  set_hl(0, "LspInterface", { fg = "#ff5599" })
  set_hl(0, "LspKeyword", { fg ="#009688" })
  set_hl(0, "LspMacro", { fg = "#ff0000" })
  set_hl(0, "LspMethod", { fg = "#f76889"})
  set_hl(0, "LspModifier", { fg = "#ffe7d7"})
  set_hl(0, "LspNamespace", { fg = "#ffbbee" })
  set_hl(0, "LspNumber", { fg = "#03396c" })
  set_hl(0, "LspOperator", { fg = "#051e3e" })
  set_hl(0, "LspProperty", { fg = "#fdf498" })
  -- set_hl(0, "LspRegexp", { link = "TSStringRegex" })
  set_hl(0, "LspString", { fg="#ff0000" })
  set_hl(0, "LspStruct", { fg = "#a8e6cf" })
  set_hl(0, "LspTypeParameter", { fg = "#009688" })
  set_hl(0, "LspVariable", { fg = "#f6cd61" })

  -- modifier
  -- set_hl(0, "LspDeclaration", { link = "TSDefine" })
  -- set_hl(0, "LspDefinition", { link = "TSTypeDefinition" })
  -- set_hl(0, "LspReadonly", { link = "TSContant" })
  -- set_hl(0, "LspStatic", { link = "TSConsantMacro" })
  -- set_hl(0, "LspDeprecated", { link = "TSWarning" })
  -- set_hl(0, "LspAbstract", { fg = "#9E6162" })
  -- set_hl(0, "LspAsync", { fg = "#81A35C" })
  set_hl(0, "LspModification", { fg = "#7E5CA3" })
  set_hl(0, "LspDocumentation", { fg = "#ccc0f5" })
  -- set_hl(0, "LspDefaultLibrary", { fg = "#c99dc1" })

  require("nvim-semantic-tokens").setup {
    preset = "default",
    -- highlighters is a list of modules following the interface of nvim-semantic-tokens.table-highlighter or
    -- function with the signature: highlight_token(ctx, token, highlight) where
    --        ctx (as defined in :h lsp-handler)
    --        token  (as defined in :h vim.lsp.semantic_tokens.on_full())
    --        highlight (a helper function that you can call (also multiple times) with the determined highlight group(s) as the only parameter)
    highlighters = { require "nvim-semantic-tokens.table-highlighter" },
  }
end

return M
