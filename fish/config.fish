set -Ux EDITOR vim
set -Ux VISUAL vim
if status is-interactive
    # Commands to run in interactive sessions can go here
end
function nnn
    set -lx NNN_PLUG 'k:preview-tui'
    command nnn -a $argv
end
