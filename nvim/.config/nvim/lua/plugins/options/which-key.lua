require'which-key'.setup {
  plugins = {
    -- Replace builtin spelling suggestions with which-key menu
    spelling = {
      enabled = true, -- press z= to get suggestions
      suggestions = 20
    },
  },
}

-- Note that you can register all of your keymaps with which-key.
--local mappings = {
--  -- key, map, description
--  q = { ':q<CR>', "Quit" }
--}
--
--local opts = { prefix = '<leader>' }
--
--local wk = require('which-key')
--wk.register(mappings, opts)
