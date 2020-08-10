# Load ax settings
source ~/.zshrc_config_ax

# ls in color
alias ls='ls -G'

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Use Hub
alias git=hub

export KEYTIMEOUT=1
