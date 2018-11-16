 # Apped this settings to .zshrc, and replace X... with custom values
 
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

 alias vaultlogin="vault auth -method=aws role=XDEVELOPER"

 # IPFS
 alias ipfsopen="ipfs config --json Addresses.Gateway '"/ip4/0.0.0.0/tcp/8080"'"
 alias ipfsclose="ipfs config --json Addresses.Gateway '"/ip4/127.0.0.1/tcp/8080"'"
 alias ipfsstart="ipfs daemon --enable-pubsub-experiment"

 # Folders
 alias cos="cd XPATH/XREPO/XFOLDER"

 # Node
 alias sbo="npm run XFOLDER:storybook"
 alias sta="npm run XFOLDER:start:dev:transpile-only"
