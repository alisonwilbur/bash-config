# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/cvy1/.sdkman"
[[ -s "/Users/cvy1/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/cvy1/.sdkman/bin/sdkman-init.sh"
