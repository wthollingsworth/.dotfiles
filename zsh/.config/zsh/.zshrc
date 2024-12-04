export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

export PATH="${HOME}/.local/bin/:${PATH}"
export PATH="/usr/local/bin:${PATH}"
export PATH="${XDG_CONFIG_HOME}/zsh/functions:${PATH}"

export EDITOR="hx"

#############
# Oh My Zsh #
#############
export ZSH="${XDG_CONFIG_HOME}/zsh/.oh-my-zsh"

COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"
HISTFILE="${XDG_STATE_HOME}/zsh/history"
HIST_STAMPS="dd.mm.yyy"
ZSH_COMPDUMP="${XDG_CACHE_HOME}/zsh/zcompdump-${ZSH_VERSION}"
ZSH_THEME="headline"

zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}/zsh/zcompcache"
zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(
    git
    vi-mode
    zsh-syntax-highlighting
)

source "${ZSH}/oh-my-zsh.sh"

# The Headline prompt theme is configured _after_ it is sourced.
HEADLINE_HOST_TO_PATH=' : '
HEADLINE_USER_PREFIX=' '
HEADLINE_HOST_PREFIX=' '
HEADLINE_PATH_PREFIX=' '
HEADLINE_BRANCH_PREFIX=' '
HEADLINE_USER_TO_HOST=' @ '
#HEADLINE_PAD_TO_BRANCH=' on '
HEADLINE_STYLE_DEFAULT=$black_back
HEADLINE_LINE_MODE='auto'

#######
# Zsh #
#######
bindkey -e # emacs line editing for commands

# Wait for Oh My Zsh to configure competion
compdef _rg hg # use kitty's hyperlinked grep completions for ripgrep

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
if [ $(uname -s) = "Linux" ]; then
  export PATH="${PATH}:/home/linuxbrew/.linuxbrew/bin"
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  # Currently I'm only using a Brewfile on Linux since I have Casks
  # (pre-built binaries) installed on macOS and there's no equivalent
  # feature for Linuxbrew.
  export HOMEBREW_BUNDLE_FILE="${HOME}/System Restore/snapshots/Brewfile"
fi

export HOMEBREW_PREFIX="$(brew --prefix)"

#############
# CLI Tools #
#############
export BAT_CONFIG_PATH="${XDG_CONFIG_HOME}/bat/bat.conf"

source <(fzf --zsh)
export FZF_DEFAULT_OPTS='--color=bg+:#3B4252,bg:#2E3440,spinner:#81A1C1,hl:#616E88,fg:#D8DEE9,header:#616E88,info:#81A1C1,pointer:#81A1C1,marker:#81A1C1,fg+:#D8DEE9,prompt:#81A1C1,hl+:#81A1C1'
alias fzf="fzf --no-info --preview='bat {}'" --preview-window '~3'
export _ZO_FZF_OPTS="$FZF_DEFAULT_OPTS
--no-info
--preview='ls -p {2..}'"
export _ZO_DATA_DIR="${XDG_CACHE_HOME}/zoxide"

# Load the catppuccin frappe theme for the zsh-syntax-highlighting plugin.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
# for installing as an oh-my-zsh plugin.
source ${XDG_CONFIG_HOME}/zsh/zsh-syntax-highlighting/catppuccin/frappe.zsh

if [[ -e "${XDG_CONFIG_HOME}/zsh/.zshrc.local" ]]
then
  source "${XDG_CONFIG_HOME}/zsh/.zshrc.local"
fi
# Hook zoxide into prompts to keep track of directories.
eval "$(zoxide init zsh)"
