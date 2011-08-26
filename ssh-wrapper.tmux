# Override vertical and horizontal split to automatically ssh into existing serve
bind-key '%' run-shell 'exec ~/tmux_ssh_split.sh -h'
bind-key '"' run-shell 'exec ~/tmux_ssh_split.sh -v'

# vim: set ft=sh:

