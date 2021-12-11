local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())

require'nvim-autopairs'.setup {
  -- use treesitter to check for a pair
  check_ts = true,

  -- autoindent
  map_cr = true,
}
