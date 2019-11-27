# Apped this settings to .zshrc, and replace X... with custom values

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

# Folders
alias cos="cd XPATH/XREPO/XFOLDER"

# Node
alias sbo="npm run XFOLDER:storybook"
alias sta="npm run XFOLDER:start:dev:transpile-only"

# Applications
alias chrome="open -a \"Google Chrome\""


# VI editing mode
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

function zle-keymap-select zle-line-init
{
    # change cursor shape in iTerm2
    case $KEYMAP in
        vicmd)      print -n -- "\E]50;CursorShape=0\C-G";;  # block cursor
        viins|main) print -n -- "\E]50;CursorShape=1\C-G";;  # line cursor
    esac

    zle reset-prompt
    zle -R
}

function zle-line-finish
{
    print -n -- "\E]50;CursorShape=0\C-G"  # block cursor
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select

export KEYTIMEOUT=1
