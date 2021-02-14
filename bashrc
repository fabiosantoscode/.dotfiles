# vim aliases
alias :q=exit
alias :wq="touch touchingstuff123.js && exit"
alias :w="touch touchingstuff123.js && rm -f touchingstuff123.js"

# defaults
alias watch="watch --color"

# actually useful
alias glog="git log --all --pretty='format:%d %Cgreen%h%Creset %an - %s' --graph"
alias wow='git status'
alias npmt='npm t'
alias k=kubectl
alias hedxump="hexdump -C"

# Less with colors!
alias less='less -R'

function __get_aws_info {
    if [[ -n "${AWS_ACCOUNT_INFO}" ]]; then
        echo "$AWS_ACCOUNT_INFO "
    fi
}

#PS1="\u@\h\e[1;31m\] ♥ \[\e[0m\] "
if [ "$(whoami)" == "root" ]; then
    PS1="\$(__get_aws_info)\u # "
else
    PS1="\$(__get_aws_info)\u@\h ♥  "
fi

# https://gist.github.com/namuol/9122237#gistcomment-1179163
function flip() {
  perl -C3 -Mutf8 -lpe '$_=reverse;y/a-zA-Z.['\'',({?!\"<_;‿⁅∴\r/ɐqɔpǝɟƃɥıɾʞ|ɯuodbɹsʇnʌʍxʎzɐqɔpǝɟƃɥıɾʞ|ɯuodbɹsʇnʌʍxʎz˙],'\'')}¿¡,>‾؛⁀⁆∵\n/' <<< "$1"
}

if [[ -n "${FABIO_SAYS_VENV:-}" ]]; then
    . $FABIO_SAYS_VENV/bin/activate
fi

export BROWSER=firefox

export VISUAL=vim

# Node env to development, production is override
export NODE_ENV=development

function rgrep {
    grep -R "$2" "$1"
}

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Fábio's private bin
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
