-- Enable filetype detection, and the usage of filetype plugins and
-- indent plugins from ftplugin/ and indent/ in the runtimepath
vim.cmd([[ filetype plugin indent on ]])

-- vim.opt provides option objects that allow setting vim options in
-- more idiomatic lua.  There is also vim.o, which is closer to using
-- :set while editing.
local opt = vim.opt

-- Disable hit-enter prompts for ins-completion-menu messages.
opt.shortmess:append({ c = true })

-- Hide buffers instead of unloading them when they aren't displayed.
-- This means that Neovim won't ask you to save when leaving an
-- unwritten buffer, but it can be useful if you are using a tabline
-- plugin that shows you if you have unwritten changes.
--opt.hidden = true

-- Tells Neovim which keys that move the cursor left and right can wrap
-- to the previous/next line when the cursor is on the first/last
-- character in the line.
--
-- We use square brackets to append to the table since some of the symbols
-- can't work as bare keys.
opt.whichwrap:append({
	["<"] = true, -- <Left>, Normal/Visual
	[">"] = true, -- <Right>, Normal/Visual
	["["] = true, -- <Left>, Insert/Replace
	["]"] = true, -- <Right>, Insert/Replace
	["b"] = true, -- <Backspace>
	["s"] = true, -- <Space>
})

-- Sets the height of the popup menu used for things like command
-- completion (:h ins-completion-menu).
opt.pumheight = 10
opt.pumwidth = 20

-- The file encoding to use when writing to disk.  This is actually the
-- default, but...
opt.fileencoding = "utf-8"

-- Sets the height of the command line.
-- opt.cmdheight = 0

-- Open splits in a more intuitive direction.
opt.splitbelow = true -- :sp[lit] opens below instead of above
opt.splitright = true -- :vsp[lit] opens right instead of left

-- Use :highlight attributes meant for gvim in terminal.  Terminals
-- must support 24-bit RGB color.
opt.termguicolors = true

-- Number of milliseconds of inactivity before writing to a swap file.
opt.updatetime = 250

-- Save undo history across nvim invocations.
opt.undofile = true

-- Time in milliseconds to wait for a mapped sequence to complete.
opt.timeoutlen = 400

-- Integrate with the system clipboard.  That is, allow things like
-- <C-V> -> p and y -> <C-V>.  This will include the selection clipboard
-- on Linux (i.e., the clipboard used when selecting text but not
-- explicitly copying it.).
opt.clipboard:append({
	"unnamed",
	"unnamedplus",
})

-- Highlight search matches.
opt.hlsearch = true

-- Ignore case when searching
opt.ignorecase = true

-- Don't ignore case when searching if a capital is included in the
-- search.
opt.smartcase = true

-- Minimum number of lines above or below the cursor when scrolling.
opt.scrolloff = 3

-- Minimum number of columns left or right of the cursor when scrolling.
opt.sidescrolloff = 5

-- Enable the mouse (even though it feels blasphemous).
opt.mouse:append({ a = true })

-- Wrap lines that are too long for the window.
opt.wrap = true

-- Display line numbers.
opt.number = true
opt.relativenumber = true

-- Draw version control signs in the number column.
opt.signcolumn = "yes"

-- Size of tabs.
opt.tabstop = 2 -- Number of spaces in a tab
opt.softtabstop = 2 -- Number of spaces in a tab for editing operations
opt.shiftwidth = 2 -- Number of columns for things like Shift+>

-- Insert spaces when tab is pressed.
opt.expandtab = true

-- Autoindent lines.
opt.autoindent = true

-- Honor options in modelines.
opt.modeline = true

-- Fold code using treesitter
-- opt.foldmethod = "expr"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
-- opt.foldlevel = 4
-- opt.foldminlines = 4
opt.foldcolumn = "1"
opt.foldlevel = 99
opt.foldenable = true

-- List of columns to highlight with hl-ColorColumn.
opt.colorcolumn = { 80 }

-- Enable global statusline
opt.laststatus = 3

vim.g.mapleader = " "
vim.g.maplocalleader = " "
