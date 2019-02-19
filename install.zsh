#!/usr/bin/env zsh

RBENV_ROOT=${RBENV_ROOT:-$HOME/.rbenv}
VIM_PACKAGES_ROOT=${VIM_PACKAGES_ROOT:-$HOME/.vim/pack}

if ! [[ -d $RBENV_ROOT ]]; then
  git clone https://github.com/sstephenson/rbenv.git $RBENV_ROOT
  mkdir $RBENV_ROOT/plugins
  git clone https://github.com/rbenv/ruby-build.git $RBENV_ROOT/plugins/ruby-build
fi

if ! [[ -d $VIM_PACKAGES_ROOT ]]; then
  # Vim Plugins
  git clone https://github.com/morhetz/gruvbox.git $VIM_PACKAGES_ROOT/colorschemes/start/gruvbox
  git clone https://github.com/ervandew/supertab.git $VIM_PACKAGES_ROOT/editor/start/supertab
  git clone https://github.com/easymotion/vim-easymotion.git $VIM_PACKAGES_ROOT/editor/start/vim-easymotion
  git clone https://github.com/tpope/vim-endwise.git $VIM_PACKAGES_ROOT/editor/start/vim-endwise
  git clone https://github.com/terryma/vim-multiple-cursors.git $VIM_PACKAGES_ROOT/editor/start/vim-multiple-cursors
  git clone https://github.com/tpope/vim-sensible.git $VIM_PACKAGES_ROOT/editor/start/vim-sensible
  git clone https://github.com/tpope/vim-unimpaired.git $VIM_PACKAGES_ROOT/editor/start/vim-unimpaired
  git clone https://github.com/tpope/vim-vinegar.git $VIM_PACKAGES_ROOT/editor/start/vim-vinegar
  git clone https://github.com/tpope/vim-apathy.git $VIM_PACKAGES_ROOT/editor/start/vim-apathy
  git clone https://github.com/sheerun/vim-polyglot.git $VIM_PACKAGES_ROOT/languages/start/vim-polyglot
  git clone https://github.com/mhinz/vim-grepper.git $VIM_PACKAGES_ROOT/search/start/vim-grepper
  git clone https://github.com/junegunn/fzf.vim.git $VIM_PACKAGES_ROOT/search/start/fzf.vim
  git clone https://github.com/tpope/vim-flagship $VIM_PACKAGES_ROOT/statusbar/start/vim-flagship
  git clone https://github.com/tpope/vim-rails.git $VIM_PACKAGES_ROOT/tools/start/vim-rails
  git clone https://github.com/tpope/vim-fugitive.git $VIM_PACKAGES_ROOT/tools/start/vim-fugitive
  git clone https://github.com/tpope/vim-projectionist.git $VIM_PACKAGES_ROOT/tools/start/vim-projectionist
  git clone https://github.com/tpope/vim-dispatch.git $VIM_PACKAGES_ROOT/tools/start/vim-dispatch
  git clone https://github.com/tpope/vim-obsession.git $VIM_PACKAGES_ROOT/tools/start/vim-obsession

  # Prezto
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
  brew install stow
  brew install tmux
  brew install fzf
  brew install ripgrep
fi