vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_footer = {''}

vim.g.dashboard_custom_header = {
    '   ╓Ñ     ╞w',
    ' ╔╬╫╫╫╦   ╞▓▓╕',
    ' ]╫╫Ñ╫╫Ñ  ╞▓▓▌',
    ' ╚╫╫H`╣╫╫w╞▓▓▌',
    ' ╚╫╫H  ╟╫╫▓▓▓▌',
    ' ╙╬╫M   ╙▓╣▓█┘',
    '   "╛     ▀^  ',
}

local options = { noremap = true }
vim.api.nvim_set_keymap('n', '<Leader>ss', ':<C-u>SessionSave<CR>', options);
vim.api.nvim_set_keymap('n', '<Leader>sl', ':<C-u>SessionLoad<CR>', options);
vim.cmd [[autocmd FileType dashboard setlocal scrolloff=0]]
