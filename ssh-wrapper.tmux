#bind % send-keys "~/scripts/split-tmux -h" C-m
#bind | send-keys "~/scripts/split-tmux -v" C-m

#bind-key '%' run-shell 'exec ~/tmux_ssh_split_h.sh -h'
#bind-key '"' run-shell 'exec ~/tmux_ssh_split_h.sh -v'

bind-key '%' run-shell 'exec tmux_ssh_split -h'
bind-key '"' run-shell 'exec tmux_ssh_split -v'

# vim: set ft=sh:

