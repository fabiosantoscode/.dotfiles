ls ~/CloudPT/configs/*.zsh | grep -v everything.zsh$ | while read line; do 
  source $line;
done
