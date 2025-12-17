#!/usr/bin/env zsh

VIM_PACKAGES_ROOT=${VIM_PACKAGES_ROOT:-$HOME/.vim/pack}

if ! [[ -d $VIM_PACKAGES_ROOT ]]; then
  # Vim Plugins
  git clone --depth 1 https://github.com/k-takata/minpac.git $VIM_PACKAGES_ROOT/minpac/opt/minpac
fi

# Prezto
git clone --depth 1 --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

if [[ "$OSTYPE" == "darwin"* ]]; then
  sudo port install stow
  sudo port install tmux
  sudo port install ripgrep
fi
