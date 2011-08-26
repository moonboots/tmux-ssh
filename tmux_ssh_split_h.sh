#!/bin/sh

ssh_options=$(tmux showenv | grep "ssh_command" | sed 's/^.*=//')
if [ -n "$ssh_options" ]
then
  tmux splitw $1 "exec ssh $ssh_options"
else
  echo "made it to else" > /tmp/temp3
  tmux splitw $1
  ##exec $SHELL
fi
