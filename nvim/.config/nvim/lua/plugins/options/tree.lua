local tree = {}
vim.g.nvim_tree_width = 30
tree.toggle = function()
  require'nvim-tree'.toggle()
  if require'nvim-tree.view'.win_open() then
    local title = 'File Explorer'
    local offset = string.rep(' ', (vim.g.nvim_tree_width - #title) / 2)
    require'bufferline.state'.set_offset(vim.g.nvim_tree_width+1, offset .. title)
    vim.cmd('wincmd w')
  else
    require'bufferline.state'.set_offset(0)
  end
end

-- As of 28 Aug 2021, there's some kind of wait time in barbar's startup
-- process.  If we don't wait for that to finish, we'll get error's about
-- barbar functions we are using being undefined.
local timer = vim.loop.new_timer()
timer:start(5, 0, vim.schedule_wrap(function()
    tree.toggle()
    vim.api.nvim_set_keymap(
        'n',
        '<Leader>t',
        ':lua require"plugins.options.tree".toggle()<CR>',
        { noremap = true, silent = true }
    )
end))

vim.cmd [[highlight NvimTreeNormal guibg=#3B4252]]
vim.cmd [[highlight NvimTreeVertSplit guifg=#3B4252 guibg=#3B4252]]
vim.cmd [[highlight NvimTreeStatusLine guibg=#3B4252]]
vim.g.nvim_tree_root_folder_modifier = ':.:t'
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_hijack_cursor = 1

return tree
