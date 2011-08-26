# Override vertical and horizontal split to automatically ssh into existing serve
bind-key '%' run-shell 'exec ~/tmux_ssh_split_h.sh -h'
bind-key '"' run-shell 'exec ~/tmux_ssh_split_h.sh -v'

# vim: set ft=sh:

