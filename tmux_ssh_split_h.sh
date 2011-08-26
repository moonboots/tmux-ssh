#!/bin/sh

ssh_options=$(tmux showenv | grep "ssh_command" | sed 's/^.*=//')
if [ -n "$ssh_options" ]
then
  tmux splitw $1 "exec ssh $ssh_options"
else
  tmux splitw $1
fi
