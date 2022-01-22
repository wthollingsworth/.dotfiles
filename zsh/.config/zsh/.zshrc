export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

export FZF_DEFAULT_OPTS="
--color=bg+:#3B4252,bg:#2E3440,spinner:#81A1C1,hl:#616E88,fg:#D8DEE9,header:#616E88,info:#81A1C1,pointer:#81A1C1,marker:#81A1C1,fg+:#D8DEE9,prompt:#81A1C1,hl+:#81A1C1
--border"
export _ZO_FZF_OPTS="$FZF_DEFAULT_OPTS
--no-info
--preview='ls -p {2..}'"
export _ZO_DATA_DIR=${XDG_DATA_HOME}

# If you come from bash you might have to change your $PATH.
export PATH="${HOME}/.local/bin/:${HOME}/bin:/usr/local/bin:${HOME}/.cargo/bin:${PATH}"

# Path to your oh-my-zsh installation.
export ZSH="${XDG_CONFIG_HOME}/zsh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}/zsh/zcompcache"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyy"
HISTFILE="${XDG_STATE_HOME}/zsh/history"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#
# See plugin README for details:
#   (https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)
plugins=(
    git
    vi-mode
)

source "${ZSH}/oh-my-zsh.sh"
compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump-${ZSH_VERSION}"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
export BAT_CONFIG_PATH="${XDG_CONFIG_HOME}/bat/bat.conf"

# try to break habits and use newer tools
function cat {
  echo "use bat instead"
}
function find {
  echo "use fd instead"
}
function grep {
  echo "use rg instead"
}
function ls {
  echo "use exa instead"
}
function cd {
  echo "use z instead"
}

export TMUX_PLUGIN_MANAGER_PATH="${XDG_DATA_HOME}/tmux/plugins"

alias vi=nvim
alias vim=nvim
alias vimdiff="nvim -d"
export MANPAGER='nvim +Man!'

# zsh vi keybindings conflict with the tmux-yank tmux plugin
# which is more useful to me right now than editing commands
#bindkey -v
bindkey -e

if [[ -e "${XDG_CONFIG_HOME}/zsh/.zshrc.local" ]]
then
  source "${XDG_CONFIG_HOME}/zsh/.zshrc.local"
fi

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
neofetch
