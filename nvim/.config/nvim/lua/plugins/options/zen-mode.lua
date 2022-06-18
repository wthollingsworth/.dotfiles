require("zen-mode").setup({
	plugins = {
		twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
		-- this will change the font size on kitty when in zen mode
		-- to make this work, you need to set the following kitty options:
		-- - allow_remote_control socket-only
		-- - listen_on unix:/tmp/kitty
		kitty = {
			enabled = false,
			font = "+44", -- font size increment
		},
	},
	-- callback where you can add custom code when the Zen window opens
	on_open = function(win)
		require("shade").toggle()
		-- require("twilight").enable()
	end,
	-- callback where you can add custom code when the Zen window closes
	on_close = function()
		require("shade").toggle()
		-- require("twilight").disable()
	end,
})
