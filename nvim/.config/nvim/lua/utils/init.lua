-- Taken and adapted from: https://github.com/grundic/vcsh-neovim-master
local M = {}

-----------------------------------------------------------
-- Function equivalent to basename in POSIX systems.
-- @param str the path string.
-----------------------------------------------------------
function M.basename(str)
  return string.gsub(str, "(.*/)(.*)", "%2")
end

-----------------------------------------------------------
-- Contatenates given paths with correct separator.
-- @param var args of string paths to joon.
-- @return a string representing the path
-----------------------------------------------------------
function M.join_paths(...)
  local result = table.concat({ ... }, "/")
  return result
end

local _base_lua_path = M.join_paths(vim.fn.stdpath('config'), 'lua')

-----------------------------------------------------------
-- Creates an array containing the relative paths of all
-- the modules in the given package.
-- @param package a string represening the name of a
--                package
-- @return an array of strings representing the relative
--         paths of all lua modules within the given
--         package
-----------------------------------------------------------
function M.globify_package(package)
  -- a joined path with package-style dot separators replaced
  -- with the forward slash separators that vim.fn.glob expects
  local glob_path = M.join_paths(
    _base_lua_path,
    package:gsub("%.", "/"),
    '*.lua'
  )

  local paths = vim.split(vim.fn.glob(glob_path), "\n")
  local glob = vim.tbl_map(function(path)
    -- convert absolute filename to relative
    -- ~/.config/nvim/lua/<package>/<module>.lua => <package>/foo
    local relative_path = path:gsub(_base_lua_path .. "/", ""):gsub(".lua", "")
    local basename = M.basename(relative_path)
    -- skip `init` and files starting with underscore.
    if (basename ~= 'init' and basename:sub(1, 1) ~= '_') then
      return relative_path
    end
  end, paths)

  return glob
end

-----------------------------------------------------------
-- Loads all modules from the given package.
-- @param package a string representing the name of a
--                package
-- @return if any of the files in the package are modules,
--         a mapping of the paths to the modules (relative
--         to neovim lua directory) to the modules
--         themselves, or true if all of the files are
--         scripts that do not return anything
-----------------------------------------------------------
function M.glob_require(package)
  local glob = M.globify_package(package)

  -- we don't have vim.tbl_flatmap and vim.tbl_flatten only works
  -- on regular arrays, not hashes/dicts/maps, so we must resort
  -- to a loop
  local map = {}
  for _, path in ipairs(glob) do
    local module = require(path)
    if vim.is_callable(module) or type(module) == "table" then
      map = vim.tbl_extend("error", map, { [path] = module })
    end
  end

  -- lua's built-in require returns true if the module did not
  -- return anything, so we'll reproduce that if none of the
  -- modules in the glob returned anything
  if vim.tbl_isempty(map) then
    return true
  end
  return map
end

return M
