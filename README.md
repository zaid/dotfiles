## Requirements
  - Zsh as your default shell.
  - Git is available in your path.
  - MacPorts (or manually install the [tools](#tools)).
  - Vim version 8.0.0050+ (or Neovim 0.2+)
  
## Installation
  - Clone the repository (into `~/.dotfiles` for example).
  - Run `cd ~/.dotfiles && zsh install.zsh` (or manually install the [tools](#tools)).
  - Run `cd ~/.dotfiles && stow *` to create all the symlinks.
  - Run `vim -c :PackUpdate` to install the configured vim plugins.
  
## Tools
The installation script installs the following tools (if it detects that it is running on MacOS):
  - stow (for managing symlinks).
  - ripgrep (a faster grep).
  - tmux (terminal multiplexer).
  
The script also clones the following repositories:
  - prezto (Zsh distribution).

## Vim plugins
I'm using [minpac](https://github.com/k-takata/minpac) to manage the plugins so you will need to
have that installed first (or use the supplied `install.zsh` script to do so). The following plugins
are configured in `.vimrc`:
  - dracula
  - vim-endwise
  - vim-sensible
  - vim-unimpaired
  - vim-vinegar
  - vim-apathy
  - vim-polyglot
  - vim-grepper
  - vim-flagship
  - vim-rails
  - vim-fugitive
  - vim-rhubarb
  - vim-projectionist
  - vim-dispatch
  - vim-obsession
  - vim-dadbod
  - vim-tbone
  - vim-rec
