# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bashrc_aliases, instead of adding them here directly.
if [ -f ~/.bashrc_aliases ]; then
  . ~/.bashrc_aliases
fi

# Local modifications.
# You may want to put all of your local bash modifications into a
# separate file like ~/.bashrc_local instead of adding them here directly.
if [ -f ~/.bashrc_local ]; then
  . ~/.bashrc_local
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/usr/local/bin
export PATH



umask 002





# ---- bash prompt --------------------------------------------------

# default text color in theme
COLOR="\033[m\]"
# cool text colors
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[33;1m\]"
WHITE="\[\033[37;1m\]"
BLUE="\033[0;36m\]"
MAGENTA="\[\033[35;1m\]"
GREEN="\033[0;32m\]"

# \h = hostname
# \u = username
# \t = time
# \w = directory (lower w is the whole directory, W is the current folder)
PS1="${YELLOW}\t${COLOR}--${MAGENTA}\u${COLOR}@${GREEN}\h${COLOR}--${BLUE}\w${COLOR}"

# add the current git branch
source ~/git-prompt.sh
CURRENT_BRANCH='$(__git_ps1 "--(%s)")'

export PS1="${PS1}${CURRENT_BRANCH}--$ "

