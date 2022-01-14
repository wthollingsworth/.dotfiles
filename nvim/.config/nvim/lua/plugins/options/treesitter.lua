require('nvim-treesitter.configs').setup {
	 -- one of "all", "maintained" (parsers with maintainers), or a list
   -- of languages
	ensure_installed = "maintained",

	-- install languages synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- list of parsers to ignore installing
	--ignore_install = { "javascript" },

	highlight = {
    -- false will disable the whole extension
		enable = true,
		
  	-- list of language that will be disabled
		--disable = { "c", "rust" },
		
		-- Setting this to true will run `:h syntax` and tree-sitter at
    -- the same time.  Set this to `true` if you depend on 'syntax'
    -- being enabled (like for indentation).  Using this option may
    -- slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},

  -- use autotag plugin to autoclose and rename HTML tags
  autotag = {
    enable = true,
  },

  -- enable autopairs integration
  autopairs = {
    enable = true,
  },

  -- use rainbow parentheses
  rainbow = {
    enable = true,
  },

  -- edits the comment string based on cursor position for
  -- filetypes like vue
  context_commentstring = {
    enable = true,
  },
}
