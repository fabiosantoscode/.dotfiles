# aliases
alias :q=exit
alias :wq=exit
alias :w="touch touchingstuff123 && rm -f touchingstuff123"
alias psrv="python2 -m SimpleHTTPServer"
alias mcurl='curl -H "User-Agent: Mozilla/5.0 (Android 4.4; Mobile; rv:41.0) Gecko/41.0 Firefox/41.0"'

# defaults
alias watch="watch --color"

## doge
alias such=git
alias very=git
alias much=git
alias shibe=git

## amaze!
alias nom=npm

# actually useful
alias glog="git log --all --pretty='format:%d %Cgreen%h%Creset %an - %s' --graph"
alias wow='git status || hg status || svn status' 
alias lel=reset
alias npmt='npm t'

function rebasepush {
    git stash save &&
        git fetch $1 $2 &&
        git rebase $1/$2 &&
        git push $1 $2 &&
        git stash pop
}

PS1="\u@\h\e[1;31m\] ♥ \[\e[0m\] "

export PATH="./node_modules/.bin:$PATH"

