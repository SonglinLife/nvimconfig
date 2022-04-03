vim.g.transparent_enabled = true
vim.g.tokyonight_transparent = true
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer"}
--
-- vim.g.tokyonight_transparent = vim.g.transparent_enabled

vim.cmd [[
try
  colorscheme tokyonight
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark

endtry
]]
