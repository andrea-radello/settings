# Replace XXX with paths
# Set variables
COSMOS=~/XXX
DEPLOYMENT_CONFIG=~/XXX

if tmux ls | grep attached -q ; then
    echo cannot re create tmux session
    exit 1
else
    # Create new session with first window named `ui`
    tmux new-session -A -s ax -n ui -d
    tmux split-window -h -t ax:ui.1
    tmux send-keys -t ax:ui.1 "cd $COSMOS/pond && nvm use" C-m
    tmux send-keys -t ax:ui.2 "cd $COSMOS/pond && nvm use" C-m
    tmux send-keys -t ax:ui.1 "clear" C-m
    tmux send-keys -t ax:ui.2 "clear" C-m
    # Create `devops` window
    tmux new-window -n devops -t ax
    tmux send-keys -t ax:devops.1 "cd $DEPLOYMENT_CONFIG" C-m
    tmux send-keys -t ax:devops.1 "clear" C-m
    # Select initial window and panel
    tmux select-window -t ax:ui.1
    tmux select-pane -t ax:ui.1
    tmux attach -t ax
fi
