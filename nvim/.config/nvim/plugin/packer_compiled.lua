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
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["alpha-nvim"] = {
    config = { " require('plugins.options.alpha') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["conflict-marker.vim"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/conflict-marker.vim",
    url = "https://github.com/rhysd/conflict-marker.vim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { " require('plugins.options.gitsigns') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { " require('plugins.options.indent-blankline') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { " require('plugins.options.lualine') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neovim-session-manager"] = {
    commands = { "SessionManager" },
    config = { " require('plugins.options.neovim-session-manager') " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/opt/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["null-ls.nvim"] = {
    config = { " require('plugins.options.null-ls') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { " require('plugins.options.nvim-autopairs') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { " require('plugins.options.nvim-cmp') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    commands = { "CodeActionMenu" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/opt/nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-colorizer.lua"] = {
    config = { " require('plugins.options.nvim-colorizer') " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { " require('plugins.options.dap') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { " require('plugins.options.dap-virtual-text') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lightbulb"] = {
    config = { " require('plugins.options.nvim-lightbulb') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    config = { " require('plugins.options.lspconfig') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-nonicons"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-nonicons",
    url = "https://github.com/yamatsum/nvim-nonicons"
  },
  ["nvim-treesitter"] = {
    config = { " require('plugins.options.treesitter') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-endwise"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-treesitter-endwise",
    url = "https://github.com/RRethy/nvim-treesitter-endwise"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["pretty-fold.nvim"] = {
    config = { " require('plugins.options.pretty-fold') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim",
    url = "https://github.com/anuvyklack/pretty-fold.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { " require('plugins.options.rust-tools') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["shade.nvim"] = {
    config = { " require('plugins.options.shade') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/shade.nvim",
    url = "https://github.com/sunjon/shade.nvim"
  },
  ["sidebar.nvim"] = {
    config = { " require('plugins.options.sidebar') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/sidebar.nvim",
    url = "https://github.com/sidebar-nvim/sidebar.nvim"
  },
  ["tabline.nvim"] = {
    config = { " require('plugins.options.tabline') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/tabline.nvim",
    url = "https://github.com/kdheepak/tabline.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { " require('plugins.options.telescope') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { " require('plugins.options.toggleterm') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["twilight.nvim"] = {
    commands = { "Twilight", "TwilightEnable", "TwilightDisable" },
    config = { " require('plugins.options.twilight') " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/opt/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-kitty"] = {
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/vim-kitty",
    url = "https://github.com/fladson/vim-kitty"
  },
  ["vim-vsnip"] = {
    config = { " require('plugins.options.vim-vsnip') " },
    loaded = true,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["zen-mode.nvim"] = {
    commands = { "ZenMode" },
    config = { " require('plugins.options.zen-mode') " },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/drwhattheheck/.local/share/nvim/site/pack/packer/opt/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
 require('plugins.options.lspconfig') 
time([[Config for nvim-lspconfig]], false)
-- Config for: sidebar.nvim
time([[Config for sidebar.nvim]], true)
 require('plugins.options.sidebar') 
time([[Config for sidebar.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
 require('plugins.options.indent-blankline') 
time([[Config for indent-blankline.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
 require('plugins.options.alpha') 
time([[Config for alpha-nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
 require('plugins.options.lualine') 
time([[Config for lualine.nvim]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
 require('plugins.options.dap-virtual-text') 
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
 require('plugins.options.nvim-autopairs') 
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
 require('plugins.options.dap') 
time([[Config for nvim-dap-ui]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
 require('plugins.options.vim-vsnip') 
time([[Config for vim-vsnip]], false)
-- Config for: pretty-fold.nvim
time([[Config for pretty-fold.nvim]], true)
 require('plugins.options.pretty-fold') 
time([[Config for pretty-fold.nvim]], false)
-- Config for: tabline.nvim
time([[Config for tabline.nvim]], true)
 require('plugins.options.tabline') 
time([[Config for tabline.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
 require('plugins.options.toggleterm') 
time([[Config for toggleterm.nvim]], false)
-- Config for: rust-tools.nvim
time([[Config for rust-tools.nvim]], true)
 require('plugins.options.rust-tools') 
time([[Config for rust-tools.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
 require('plugins.options.telescope') 
time([[Config for telescope.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
 require('plugins.options.gitsigns') 
time([[Config for gitsigns.nvim]], false)
-- Config for: shade.nvim
time([[Config for shade.nvim]], true)
 require('plugins.options.shade') 
time([[Config for shade.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
 require('plugins.options.treesitter') 
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
 require('plugins.options.nvim-cmp') 
time([[Config for nvim-cmp]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
 require('plugins.options.null-ls') 
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-lightbulb
time([[Config for nvim-lightbulb]], true)
 require('plugins.options.nvim-lightbulb') 
time([[Config for nvim-lightbulb]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TwilightDisable lua require("packer.load")({'twilight.nvim'}, { cmd = "TwilightDisable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SessionManager lua require("packer.load")({'neovim-session-manager'}, { cmd = "SessionManager", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CodeActionMenu lua require("packer.load")({'nvim-code-action-menu'}, { cmd = "CodeActionMenu", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ZenMode lua require("packer.load")({'zen-mode.nvim'}, { cmd = "ZenMode", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TwilightEnable lua require("packer.load")({'twilight.nvim'}, { cmd = "TwilightEnable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Twilight lua require("packer.load")({'twilight.nvim'}, { cmd = "Twilight", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType css ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "html" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
