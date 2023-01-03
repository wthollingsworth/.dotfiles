local hl = vim.api.nvim_set_hl

local HighlightService = {}

HighlightService.new = function(spec)
  local self = {}

  function self.highlight()
    for group, properties in pairs(spec) do
      -- 0 makes this a global highlight group
      hl(0, group, properties)
    end
  end

  return self
end

return HighlightService
