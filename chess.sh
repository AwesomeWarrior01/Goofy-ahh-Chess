#!/bin/bash

# This should make it so that all windows close. 
trap 'tmux kill-server' EXIT
# Start a new tmux session in the background
tmux new-session -d -s my_session

# Run the first script in the first pane
tmux send-keys -t my_session './board.sh' C-m

# Split the window vertically
tmux split-window -v

# Run the second script in the second pane
tmux send-keys -t my_session './legalMoves.sh' C-m

# Split the window horizontally
tmux split-window -h

# Run the third script in the third pane

tmux send-keys -t my_session 'cd python/stockfish_project/; python3 main.py ' C-m

# Attach to the tmux session
tmux attach -t my_session

