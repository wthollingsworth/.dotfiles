# XDG Base Directories
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

# PATH additions
fish_add_path "$HOME/.local/bin"
fish_add_path /usr/local/bin
fish_add_path "$XDG_CONFIG_HOME/zsh/functions"

############
# Homebrew #
############

# Homebrew prefixes are not consistent across installations.
# - macOS Intel: `/usr/local`
# - Linux: `/home/linuxbrew/.linuxbrew`
#
# The original use case on macOS was to provide a CLI package
# manager since macOS doesn't ship with one, and `/usr/local`
# is the standard place to use when installing software
# locally, which is why `/usr/local/bin` is in `${PATH}` by
# default.
#
# Apparently the primary use case for Linux is specifically
# to install newer tools on systems which one doesn't have
# admin priviliges, and even if one _did_ have root access,
# Linux distributions _do_ ship with a package manager which
# will be writing to `/usr/local` and Homebrew shouldn't
# create conflicts.  So the prefix is set to another
# location, which of course wouldn't be in `${PATH}`.
switch (uname)
    case Linux
        set -gx HOMEBREW_PREFIX /home/linuxbrew/.linuxbrew
    case '*'
        set -gx HOMEBREW_PREFIX /usr/local
end

if status is-interactive
  set -gx CDPATH . $HOME $CDPATH
  set -gx EDITOR nvim

  # Set up Homebrew-related completions and enviroment variables
  eval ($HOMEBREW_PREFIX/bin/brew shellenv)
end

#############
# CLI Tools #
#############

# Bat
set -gx BAT_CONFIG_PATH "$XDG_CONFIG_HOME/bat/bat.conf"

# FZF
if type -q fzf
  fzf --fish | source

  set -gx FZF_DEFAULT_OPTS $FZF_DEFAULT_OPTS'
    --color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
    --color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B
  '

  alias fzf="fzf --no-info --preview='bat {}' --preview-window='~3'"
end

#########################
# Local Configuration   #
#########################
set -l local_config "$XDG_CONFIG_HOME/fish/config.local.fish"
if test -e $local_config
    source $local_config
end

