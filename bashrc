export TERM=xterm-256color

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

