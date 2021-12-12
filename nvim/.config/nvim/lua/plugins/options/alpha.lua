local dashboard_theme = require('alpha.themes.dashboard')
dashboard_theme.section.buttons.val = {
  dashboard_theme.button("e", "  New file", "<cmd>ene <CR>"),
  dashboard_theme.button("SPC f f", "  Find file"),
  dashboard_theme.button("SPC f g", "  Find word"),
  dashboard_theme.button("SPC s l", "  Open last session"),
}
dashboard_theme.section.footer.val = require('alpha.fortune')
require'alpha'.setup(dashboard_theme.opts)
