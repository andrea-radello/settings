# replace `xxx` with credentials

# ls in color
alias ls='ls -G'

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

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
export VAULT_ADDR=https://vault.xxx.net

alias vaultlogin="vault login -method=aws role=xxx"

# Rust and cargo
export PATH=$HOME/.cargo/.bin:$PATH

# IPFS
alias ipfsopen="ipfs config --json Addresses.Gateway '"/ip4/0.0.0.0/tcp/8080"'"
alias ipfsclose="ipfs config --json Addresses.Gateway '"/ip4/127.0.0.1/tcp/8080"'"
alias ipfsstart="ipfs daemon --enable-pubsub-experiment"

# AX Paths
export AX_LOCATION_COSMOS="/Users/xxx/Documents/Repositories/xxx"
export AX_LOCATION_COSMOS_POND="/Users/xxx/Documents/Repositories/Cosmos/xxx"
export AX_LOCATION_COSMOS_BIN="/Users/xxx/Documents/Repositories/Cosmos/xxx"
export AX_LOCATION_COSMOS_RT="/Users/xxx/Documents/Repositories/Cosmos/xxx"
export AX_LOCATION_DEPLOYMENT="/Users/xxx/Documents/Repositories/xxx"
export AX_LOCATION_SPO="/Users/xxx/Documents/Repositories/xxx"
export DESKTOP="/Users/spo/Desktop/"

# Folders
alias cos="cd ~ && cd ${AX_LOCATION_COSMOS}"
alias pond="cd ~ && cd ${AX_LOCATION_COSMOS_POND}"
alias bin="cd ~ && cd ${AX_LOCATION_COSMOS_BIN}"
alias rt="cd ~ && cd ${AX_LOCATION_COSMOS_RT}"
alias dconf="cd ~ && cd ${AX_LOCATION_DEPLOYMENT}"

# Node
alias sbo="cd ~ && cd ${AX_LOCATION_COSMOS_POND} && npm run chrome:storybook"
alias sta="cd ~ && cd ${AX_LOCATION_COSMOS_POND} && npm run chrome:start:dev:transpile-only"

# Applications
alias chrome="open -a \"Google Chrome\""
alias ax-spo="cd ~ && sh ax-spo.sh"

# Notes
alias notes="cd ${DESKTOP} && vim ax-notes.txt"

export KEYTIMEOUT=1
