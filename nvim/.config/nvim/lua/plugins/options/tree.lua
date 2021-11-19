require'nvim-tree'.setup {
    -- disables netrw completely
    disable_netrw       = true,
    -- hijack netrw window on startup
    hijack_netrw        = true,
    -- open the tree when running this setup function
    open_on_setup       = false,
    -- will not open on setup if the filetype is in this list
    ignore_ft_on_setup  = {},
    -- closes neovim automatically when the tree is the last **WINDOW** in the view
    auto_close          = false,
    -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
    open_on_tab         = false,
    -- hijacks new directory buffers when they are opened.
    update_to_buf_dir   = {
        -- enable the feature
        enable = true,
        -- allow to open the tree if it was previously closed
        auto_open = true,
    },
    -- hijack the cursor in the tree to put it at the start of the filename
    hijack_cursor       = true,
    -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
    update_cwd          = false,
    -- show lsp diagnostics in the signcolumn
    diagnostics = {
        enable = false,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        }
    },
    -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
    update_focused_file = {
        -- enables the feature
        enable      = false,
        -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
        -- only relevant when `update_focused_file.enable` is true
        update_cwd  = false,
        -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
        -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
        ignore_list = {}
    },
    -- configuration options for the system open command (`s` in the tree by default)
    system_open = {
        -- the command to run this, leaving nil should work in most cases
        cmd  = nil,
        -- the command arguments as a list
        args = {}
    },

    view = {
        -- width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
        width = 30,
        -- height of the window, can be either a number (columns) or a string in `%`, for top or bottom side placement
        height = 30,
        -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
        side = 'left',
        -- if true the tree will resize itself after opening a file
        auto_resize = false,
        mappings = {
            -- custom only false will merge the list with the default mappings
            -- if true, it will only use your list to set the mappings
            custom_only = false,
            -- list of mappings to set on the tree manually
            list = {}
        }
    }
}

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
    vim.cmd [[highlight NvimTreeNormal guibg=#3B4252]]
    vim.cmd [[highlight NvimTreeVertSplit guifg=#3B4252 guibg=#3B4252]]
    vim.cmd [[highlight NvimTreeStatusLine guibg=#3B4252]]
end))

vim.g.nvim_tree_root_folder_modifier = ':.:t'
vim.g.nvim_tree_add_trailing = 1

return tree
