-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/drwhattheheck/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/drwhattheheck/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/drwhattheheck/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/drwhattheheck/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/drwhattheheck/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["JABS.nvim"] = {
    config = { 'vim.api.nvim_set_keymap("n", "<Leader>jo", ":JABSOpen<CR>", { noremap = true })' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/JABS.nvim"
  },
  ["dashboard-nvim"] = {
    config = { 'require("plugins.options.dashboard")' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["ejs-syntax"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/ejs-syntax"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["indent-blankline.nvim"] = {
    config = { 'require("plugins.options.indent-blankline")' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    config = { 'require("plugins.options.lspkind-nvim")' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { 'require("plugins.options.lualine")' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["luatab.nvim"] = {
    config = { 'require("plugins.options.luatab")' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/luatab.nvim"
  },
  ["mkdir.nvim"] = {
    config = { 'require("plugins.options.mkdir")' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/mkdir.nvim"
  },
  ["nord.nvim"] = {
    config = { 'require("plugins.options.nord")' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nord.nvim"
  },
  ["nvim-compe"] = {
    config = { 'require("plugins.options.nvim-compe")' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { 'require("plugins.options.nvim-lspinstall")' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { 'require("nvim-web-devicons").get_icons()' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    config = { 'require("plugins.options.telescope")' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/vim-css-color"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/vim-javascript"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["which-key.nvim"] = {
    config = { 'require("plugins.options.whichkey")' },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: mkdir.nvim
time([[Config for mkdir.nvim]], true)
require("plugins.options.mkdir")
time([[Config for mkdir.nvim]], false)
-- Config for: nord.nvim
time([[Config for nord.nvim]], true)
require("plugins.options.nord")
time([[Config for nord.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require("plugins.options.telescope")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
require("plugins.options.nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
require("plugins.options.lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
require("plugins.options.lualine")
time([[Config for lualine.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
require("plugins.options.dashboard")
time([[Config for dashboard-nvim]], false)
-- Config for: nvim-lspinstall
time([[Config for nvim-lspinstall]], true)
require("plugins.options.nvim-lspinstall")
time([[Config for nvim-lspinstall]], false)
-- Config for: JABS.nvim
time([[Config for JABS.nvim]], true)
vim.api.nvim_set_keymap("n", "<Leader>jo", ":JABSOpen<CR>", { noremap = true })
time([[Config for JABS.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
require("nvim-web-devicons").get_icons()
time([[Config for nvim-web-devicons]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require("plugins.options.whichkey")
time([[Config for which-key.nvim]], false)
-- Config for: luatab.nvim
time([[Config for luatab.nvim]], true)
require("plugins.options.luatab")
time([[Config for luatab.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
require("plugins.options.indent-blankline")
time([[Config for indent-blankline.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
