require('lualine').setup {
    -- sections = {
    --     lualine_c = { 'filename', require'pomodoro'.statusline }
    -- },
    options = {
        theme = 'nord',
        section_separators = {'', ''},
        component_separators = {'', ''},
        disabled_filetypes = {'NvimTree'}
    },
}
