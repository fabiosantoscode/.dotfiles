
# fixed by pmodloads.zsh

# autoload colors && colors
# 
# function parse_git_branch {                                                        
#     git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ @\1/'
# }
# 
# function parse_git_additions {
# }
# 
# function gitprecmd () {
#     export PS1='%F{cyan}${_prompt_sorin_pwd}%f${git_info:+${(e)git_info[prompt]}}%(!. %B%F{red}#%f%b.)$(parse_git_branch)${editor_info[keymap]} '
# }
# 
# add-zsh-hook precmd gitprecmd
