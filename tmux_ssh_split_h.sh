#!/bin/sh
# If running in tmux and the user has ssh-ed into another machine, create split
# pane also logged into that machine. Otherwise behave like regular split.

# Extract ssh arguments like hostname used to initial connect to another
# machine.

window_index=$(tmux display-message -p '#I')
session_variable_name="window_${window_index}_ssh_args"
echo $session_variable_name > /tmp/test5

ssh_args=$(tmux showenv | grep -F "$session_variable_name" | sed 's/^.*=//')
if [ -n "$ssh_args" ]
then
  tmux splitw $1 "exec ssh $ssh_args"
else
  tmux splitw $1
fi
