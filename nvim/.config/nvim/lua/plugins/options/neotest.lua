local neotest = require("neotest")
neotest.setup({
	adapters = {
		require("neotest-rspec")({
			runner = vim.tbl_flatten({
				"docker-compose",
				"run",
				"test",
				"bundle",
				"exec",
				"rspec",
			}),
		}),
	},
})

-- Run the nearest test
vim.keymap.set("n", "<leader>nn", neotest.run.run)
-- Run all tests in the file
vim.keymap.set("n", "<leader>nf", function()
	neotest.run.run(vim.fn.expand("%"))
end)
