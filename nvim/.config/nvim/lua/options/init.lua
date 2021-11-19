vim.o.wrap = true
vim.o.termguicolors = true

vim.o.expandtab = true      -- use spaces instead of tabs
vim.o.tabstop = 4           -- number of spaces in a tab
vim.o.softtabstop = 4       -- same as tabstop, except for editing operations
vim.o.shiftwidth = 4        -- number of columsn for shifting (i.e., Shift+>)

vim.o.cindent = true        -- use C/C++ indentation conventions

vim.o.modeline = true       -- read vim.oions from modelines

vim.o.incsearch = true      -- incremental search
vim.o.hlsearch = true       -- highlight search results
vim.o.ignorecase = true     -- case insensitive search
vim.o.smartcase = true      -- except when capitals are explicitly used

vim.wo.number = true         -- show line numbers
vim.cmd [[ autocmd TermOpen * setlocal nonumber norelativenumber ]]

vim.o.splitbelow = true     -- :vsplit's will appear below the current window
vim.o.splitright = true     -- :split's will appear to the right of the current window

vim.o.timeoutlen = 500     -- time to wait for a mapped sequence to complete

vim.o.mouse = 'a'

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

vim.o.breakindent = true

vim.o.undofile = true

-- For Neovide
vim.o.guifont = 'CaskaydiaCove Nerd Font Mono'
