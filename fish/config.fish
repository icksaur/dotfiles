set -Ux EDITOR vim
set -Ux VISUAL vim
set -Ux NNN_FIFO /tmp/nnn.fifo
set -Ux NNN_PLUG 'f:fzopen;p:preview-tui'
set -Ux MAKEFLAGS '-j'(nproc)
if status is-interactive
    # Commands to run in interactive sessions can go here
end
function nnn
    set -lx NNN_PLUG 'k:preview-tui'
    command nnn -a $argv
end
set -U fish_user_paths $HOME/bin $fish_user_paths
export PATH="$HOME/.local/bin:$PATH"
