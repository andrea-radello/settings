!/bin/bash
# If this file is modified, kill the existing session
# with "tmux kill-session -t mytmux" and run this again
 
# If the "mytmux" session does not exist ...
if ! tmux has-session -t mytmux; then
  # Create a new session named "mytmux" and detach from it
  tmux new-session -d -s mytmux -n mwl

  # Create additionally two windows
  tmux new-window -n oth -t mytmux
  tmux new-window -n zsh -t mytmux

  # Split into panes the two windows
  tmux split-window -h -t mytmux:1
  tmux split-window -v -t mytmux:1.1
  tmux split-window -v -t mytmux:1.2
  tmux split-window -h -t mytmux:2

  # Send command to pane on right most pane 
  tmux send-keys -t mytmux:0.0 'cd' C-m
  
  # Send commands to MWL specific panes 
  tmux send-keys -t mytmux:1.1 'cd $AX_LOCATION_COSMOS_BIN' C-m
  tmux send-keys -t mytmux:1.1 'clear' C-m
 
  tmux send-keys -t mytmux:1.2 'cd $AX_LOCATION_COSMOS_RT' C-m
  tmux send-keys -t mytmux:1.2 'clear' C-m
  
  tmux send-keys -t mytmux:1.3 'cd $AX_LOCATION_COSMOS_POND' C-m
  tmux send-keys -t mytmux:1.3 'clear' C-m
 
  # Send commands to other panes 
  tmux send-keys -t mytmux:2.1 'cd $AX_LOCATION_SPO' C-m
  tmux send-keys -t mytmux:2.1 'clear' C-m

  tmux send-keys -t mytmux:2.2 'cd $AX_LOCATION_DEPLOYMENT' C-m
  tmux send-keys -t mytmux:2.2 'clear' C-m
 
  # Focus MWL window right most pane
  tmux select-window -t mytmux:1
  tmux select-pane -t mytmux:1.4
fi
 
# Attach to the "mytmux" session
tmux attach -t mytmux
