local config = require('session_manager.config')
require'session_manager'.setup {
  -- Don't try to autoload if neovim is started without arguments.
  -- This allows using a dashboard/greeter plugin.
  autoload_mode = config.AutoloadMode.Disabled,

  -- Use autosave, but only when already working in a session.
  -- This means that you won't get sessions for looking at files
  -- you aren't actually editing or when neovim is run without
  -- arguments.
  autosave_only_in_session = true,
}
