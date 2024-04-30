
local function config()
--  NERDTree Settings Start
vim.g.NERDTreeDirArrowExpandable = '▸'
vim.g.NERDTreeDirArrowCollapsible = '▾'

-- Show hidden files in NERDTree
vim.g.NERDTreeShowHidden = 1
-- NERDTree Settings End
end

return {
  config = config
}
