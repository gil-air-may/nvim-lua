local M = {}

function M.reloadconfig()
  vim.cmd [[:nmapclear]]
  for name,_ in pairs(package.loaded) do
    package.loaded[name] = nil
  end

  dofile(vim.env.MYVIMRC)
end

return M
