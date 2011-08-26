#!/bin/sh
# If running in tmux and the user has ssh-ed into another machine, create split
# pane also logged into that machine. Otherwise behave like regular split.

# Extract ssh arguments like hostname used to initial connect to another
# machine.
ssh_args=$(tmux showenv | grep "ssh_args" | sed 's/^.*=//')
if [ -n "$ssh_args" ]
then
  tmux splitw $1 "exec ssh $ssh_args"
else
  tmux splitw $1
fi
