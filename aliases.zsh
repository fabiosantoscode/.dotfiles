# aliases
alias :q=exit
alias :wq=exit
alias :w="touch touchingstuff123 && rm -f touchingstuff123"
alias psrv="python -m SimpleHTTPServer"

# defaults
alias watch="watch --color"

## doge
alias such=git
alias very=git
alias much=git
alias shibe=git

# actually useful
alias glog="git log --all --pretty='format:%d %Cgreen%h%Creset %an - %s' --graph"
alias wow='git status || hg status || svn status' 
alias lel=reset

function rebasepush {
    git stash save &&
        git fetch $1 $2 &&
        git rebase $1/$2 &&
        git push $1 $2 &&
        git stash pop
}

alias clojure="java -cp /home/fabio/clojure/clojure-1.7.0.jar clojure.main"

# Chmod
alias -- +x='chmod +x'

alias nodedoc="xdg-open /usr/share/doc/nodejs/api/index.html"

export PATH=$PATH:~/android-sdk-linux/tools
