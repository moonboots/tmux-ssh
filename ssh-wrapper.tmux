#bind % send-keys "~/scripts/split-tmux -h" C-m
#bind | send-keys "~/scripts/split-tmux -v" C-m

#bind-key % run-shell 'tmux splitw -h "echo test; exec $SHELL"'
#bind-key % run-shell 'tmux splitw -h "export TEST=$(test_tmux_function); exec $TEST"'
#bind-key % run-shell 'tmux splitw -h "exec /bin/bash"'
#bind-key % run-shell 'tmux splitw -h "exec ~/test_tmux_function.sh"'
bind-key '%' run-shell 'exec ~/tmux_ssh_split_h.sh -h'
bind-key '"' run-shell 'exec ~/tmux_ssh_split_h.sh -v'

# vim: set ft=sh:

