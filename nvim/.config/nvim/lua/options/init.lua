local opt = vim.opt

opt.wrap = true
opt.termguicolors = true

opt.expandtab = true      -- use spaces instead of tabs
opt.tabstop = 4           -- number of spaces in a tab
opt.softtabstop = 4       -- same as tabstop, except for editing operations
opt.shiftwidth = 4        -- number of columsn for shifting (i.e., Shift+>)

opt.cindent = true        -- use C/C++ indentation conventions

opt.modeline = true       -- read options from modelines

opt.incsearch = true      -- incremental search
opt.hlsearch = true       -- highlight search results
opt.ignorecase = true     -- case insensitive search
opt.smartcase = true      -- except when capitals are explicitly used

opt.number = true         -- show line numbers
vim.cmd [[ autocmd TermOpen * setlocal nonumber norelativenumber ]]

opt.splitbelow = true     -- :vsplit's will appear below the current window
opt.splitright = true     -- :split's will appear to the right of the current window

opt.timeoutlen = 500     -- time to wait for a mapped sequence to complete

-- For gnvim
opt.guifont = 'CaskaydiaCove Nerd Font Mono'
