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

export BROWSER=firefox

export VISUAL=vim

# Node env to development, production is override
export NODE_ENV=development

# ??? nvm wtf
export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

# terser dev mode
export TERSER_NO_BUNDLE=1

export NODE_ENV=development

function rgrep {
    grep -R "$2" "$1"
}
