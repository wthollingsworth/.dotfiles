local use = require("packer").use

local Specification = {}

Specification.new = function(repo)
  local self = {}

  -- Many plugins use the cute extention `.nvim`.
  -- Note that because the `.` is not a word character,
  -- this regex silently ignores that extension.
  local basename = repo:match("%w+/(%w+)")

  local spec = {
    repo,
    config = function()
      local present, plugin = pcall(require, basename)
      if present then
        plugin.setup({})
      end
    end
  }
  local dependents = {}

  function self.with(tbl)
    spec = vim.tbl_deep_extend("force", spec, tbl)
    return self
  end

  function self.dependents(tbl)
    for _, dependent in ipairs(tbl) do
      table.insert(dependents, dependent)
    end

    return self
  end

  function self.use()
    for _, dependent in ipairs(dependents) do
      use({ dependent, requires = repo })
    end
    use(spec)
  end

  return self
end

return Specification
