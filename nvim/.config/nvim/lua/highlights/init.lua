local HighlightService = require("utils.highlight_service")
local utils = require("utils")

local specs = utils.glob_require("highlights")
for module, spec in pairs(specs) do
  HighlightService.new(spec).highlight()
end
