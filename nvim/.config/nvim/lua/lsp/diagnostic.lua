-- Show diagnostics in hover window
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf vim.api.nvim_create_autocmd("CursorHold", {
      desc = "Show diagnostics in hover window",
      buffer = bufnr,
      callback = function()
        local opts = {
          focusable = false,
          close_events = {
            "BufLeave",
            "CursorMoved",
            "InsertEnter",
            "FocusLost",
          },
          border = "rounded",
          source = "always",
          prefix = " ",
          scope = "cursor",
        }
        vim.diagnostic.open_float(nil, opts)
      end,
    })
  end,
})

-- Change diagnostic symbols in the sign column
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
