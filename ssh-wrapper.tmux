#bind % send-keys "~/scripts/split-tmux -h" C-m
#bind | send-keys "~/scripts/split-tmux -v" C-m

#bind-key % run-shell 'tmux splitw -h "echo test; exec $SHELL"'
#bind-key % run-shell 'tmux splitw -h "export TEST=$(test_tmux_function); exec $TEST"'
#bind-key % run-shell 'tmux splitw -h "exec /bin/bash"'
#bind-key % run-shell 'tmux splitw -h "exec ~/test_tmux_function.sh"'
bind-key % run-shell 'exec sh ~/test_tmux_function.sh'

# vim: set ft=sh:

