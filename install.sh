set -exuo pipefail

# Black magic to `cd` us to this dir
# https://stackoverflow.com/a/16349776/1011311
cd "${0%/*}"

[ ! -f ../.gitconfig ] && ln -T gitconfig ../.gitconfig
[ ! -f ../.tmux.conf ] && ln -T tmux.conf ../.tmux.conf
[ ! -f ../.inputrc ] && ln -T inputrc ../.inputrc

LOAD_BASHRC=". ~/.dotfiles/bashrc"
grep "$LOAD_BASHRC" ../.bashrc  >/dev/null 2>&1 || echo "$LOAD_BASHRC" >> ../.bashrc
