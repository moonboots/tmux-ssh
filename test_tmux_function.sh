#!/bin/sh

ssh_options=$(tmux showenv | grep "ssh_command" | sed 's/^.*=//')
#if [ -z "$session_variable_name" ]
#then
  tmux splitw -h "exec ssh $ssh_options"
#else
  #tmux splitw -h
  ##exec $SHELL
#fi
