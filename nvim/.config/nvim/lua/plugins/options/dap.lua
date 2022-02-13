local dap = require("dap")
vim.keymap.set("n", "<leader>dsc", dap.continue)
vim.keymap.set("n", "<leader>dsv", dap.step_over)
vim.keymap.set("n", "<leader>dsi", dap.step_into)
vim.keymap.set("n", "<leader>dso", dap.step_out)

local widgets = require("dap.ui.widgets")
vim.keymap.set("n", "<leader>duh", widgets.hover)
vim.keymap.set("n", "<leader>duf", function()
	require("dap.ui.widgets").centered_float(widgets.scopes)
end)

vim.keymap.set("n", "<leader>dro", dap.repl.open)
vim.keymap.set("n", "<leader>drl", dap.run_last)

vim.keymap.set("n", "<leader>dbc", function()
	require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
end)
vim.keymap.set("n", "<leader>dbm", function()
	require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)

vim.keymap.set("n", "<leader>dbt", dap.toggle_breakpoint)

local dapui = require("dapui")
vim.keymap.set("n", "<leader>di", dapui.toggle)
dapui.setup()
