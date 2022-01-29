local M = {}

M.use = function(plugins)
  return function(use)
    use({'wbthomason/packer.nvim', opt = true})
      for _, plugin in ipairs(plugins) do
        use(plugin)
    end
  end
end

return M
