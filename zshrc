# Source every file in this directory
source ~/.zsh/checks.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/history.zsh

# Sourcing main .profile file
# in case important stuff is in there
source ~/.profile

# Source local rc.d directory if it exists
CONF_DIRECTORY="$PWD/.rc.d"
if [[ -d "$CONF_DIRECTORY" ]]; then
  for file in $CONF_DIRECTORY/*.zsh; do
    source $file
  done
fi
