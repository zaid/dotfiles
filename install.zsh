#!/usr/bin/env zsh

RBENV_ROOT=${RBENV_ROOT:-$HOME/.rbenv}
VIM_PACKAGES_ROOT=${VIM_PACKAGES_ROOT:-$HOME/.vim/pack}

if ! [[ -d $RBENV_ROOT ]]; then
  git clone --depth 1 https://github.com/sstephenson/rbenv.git $RBENV_ROOT
  mkdir $RBENV_ROOT/plugins
  git clone --depth 1 https://github.com/rbenv/ruby-build.git $RBENV_ROOT/plugins/ruby-build
fi

if ! [[ -d $VIM_PACKAGES_ROOT ]]; then
  # Vim Plugins
  git clone --depth 1 https://github.com/k-takata/minpac.git $VIM_PACKAGES_ROOT/minpac/opt/minpac
fi

# Prezto
git clone --depth 1 --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

if [[ "$OSTYPE" == "darwin"* ]]; then
  brew install stow
  brew install tmux
  brew install ripgrep
fi
