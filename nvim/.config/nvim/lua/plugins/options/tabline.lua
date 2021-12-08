require'tabline'.setup {
  enable = true,
  options = {
    show_tabs_always = true,
    show_filename_only = true, -- show basename only, not path
  },
}

-- Store tab pages and globals in session.
vim.opt.sessionoptions:append {
  tabpages = true,
  globals = true,
}
