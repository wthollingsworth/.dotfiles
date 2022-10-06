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

  function self.with(tbl)
    spec = vim.tbl_deep_extend("force", spec, tbl)
    return self
  end

  function self.spec()
    return spec
  end

  function self.use()
    use(spec)
  end

  return self
end

return Specification
