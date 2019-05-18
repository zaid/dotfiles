# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# IEx history
export ERL_AFLAGS="-kernel shell_history enabled"

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
