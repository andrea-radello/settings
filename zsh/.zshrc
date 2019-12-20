# Apped this settings to .zshrc, and replace X... with custom values

# NVM (use instructions from https://github.com/nvm-sh/nvm#installation-and-update)
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"# 
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# HUB
alias git=hub

# Vault
function vaultauth {
vault auth "$@" && \
 if [ -f ~/.vault-token ]; then
   token=$(cat ~/.vault-token)
   if [ ! -z $token ]; then
     export VAULT_TOKEN=$token
   fi
   rm ~/.vault-token
 fi
}
export VAULT_ADDR=https://XSUBDOMAIN.XCOMPANY.XDOMAIN

alias vaultlogin="vault login -method=aws role=XDEVELOPER"

# Rust and cargo
export PATH=$HOME/.cargo/.bin:$PATH

# IPFS
alias ipfsopen="ipfs config --json Addresses.Gateway '"/ip4/0.0.0.0/tcp/8080"'"
alias ipfsclose="ipfs config --json Addresses.Gateway '"/ip4/127.0.0.1/tcp/8080"'"
alias ipfsstart="ipfs daemon --enable-pubsub-experiment"

# AX Paths
export AX_LOCATION_COSMOS="XPATH/XREPO/XFOLDER"
export AX_LOCATION_COSMOS_POND="XPATH/XREPO/XFOLDER/pond"
export AX_LOCATION_COSMOS_BIN="XPATH/XREPO/XFOLDER/bin"
export AX_LOCATION_COSMOS_RT="XPATH/XREPO/XFOLDER/rt-master"
export AX_LOCATION_DEPLOYMENT="XPATH/XREPO/Internal-Deployment-Config"
export AX_LOCATION_SPO="XPATH/xpo"

# Folders
alias cos="cd ~ && cd ${AX_LOCATION_COSMOS}"
alias pond="cd ~ && cd ${AX_LOCATION_COSMOS_POND}"
alias bin="cd ~ && cd ${AX_LOCATION_COSMOS_BIN}"
alias rt="cd ~ && cd ${AX_LOCATION_COSMOS_RT}"
alias dconfig="cd ~ && cd ${AX_LOCATION_DEPLOYMENT}"

# Node
alias sbo="cd ~ && cd ${AX_LOCATION_COSMOS_POND} && npm run XFOLDER:storybook"
alias sta="cd ~ && cd ${AX_LOCATION_COSMOS_POND} && npm run XFOLDER:start:dev:transpile-only"

# Applications
alias ax="cd ~ && sh ax.sh"
# alias chrome="open -a \"Google Chrome\"" # use instead Oh My Zsh plugin

# # VI editing mode
# bindkey -v
# 
# bindkey '^P' up-history
# bindkey '^N' down-history
# bindkey '^?' backward-delete-char
# bindkey '^h' backward-delete-char
# bindkey '^w' backward-kill-word
# bindkey '^r' history-incremental-search-backward
# 
# function zle-keymap-select zle-line-init
# {
#     # change cursor shape in iTerm2
#     case $KEYMAP in
#         vicmd)      print -n -- "\E]50;CursorShape=0\C-G";;  # block cursor
#         viins|main) print -n -- "\E]50;CursorShape=1\C-G";;  # line cursor
#     esac
# 
#     zle reset-prompt
#     zle -R
# }
# 
# function zle-line-finish
# {
#     print -n -- "\E]50;CursorShape=0\C-G"  # block cursor
# }
# 
# zle -N zle-line-init
# zle -N zle-line-finish
# zle -N zle-keymap-select
# 
# export KEYTIMEOUT=1
