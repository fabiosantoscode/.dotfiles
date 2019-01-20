set -exuo pipefail

which thefuck || brew install thefuck

[ ! -f ../.gitconfig ] && ln -T gitconfig ../.gitconfig
[ ! -f ../.tmux.conf ] && ln -T tmux.conf ../.tmux.conf
