#!/usr/bin/env bash

################################################################################
# install
#
# This script symlinks dotfiles into place in the home and config directories
#
# Based on:
# https://github.com/joshukraine/dotfiles
################################################################################

dotfiles_echo() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\\n[DOTFILES] ${fmt}\\n" "$@"
}

if ! command -v stow >/dev/null; then
    dotfiles_echo "GNU stow is required."
    exit 1
fi

config_dirs=(
        "alacritty"
        "bash"
        "bat"
        "fish"
        "git"
        "nvim"
        "starship"
    )

set -e # Terminate script if anything exits with a non-zero value

if [ -z "$DOTFILES" ]; then
  export DOTFILES="${HOME}/.dotfiles"
fi

dotfiles_echo "Installing dotfiles..."
cd ${DOTFILES}
for item in "${config_dirs[@]}"; do
    dotfiles_echo "Linking ${item}..."
    stow ${item}
done
