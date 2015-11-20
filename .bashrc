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

umask 002

# ---- bash prompt --------------------------------------------------
# All the [\033[_;__m\] blocks (where _ is a number) are colors
# lower w is the whole directory, W is the current folder
# Add this back after 1st bracket for the hostname: [\033[1;34m\] \h or \H
if [ -f /etc/bash_completion.d/git ]; then
  . /etc/bash_completion.d/git
  export PS1='~~\033[1;34m\]\h\033[m\]~~\033[0;36m\]\u\033[m\]~~\033[0;37m\]\t\033[m\]~~\033[0;32m\]\w\[\033[0;37m\]~~\[\033[0;33m\]$(__git_ps1 "(%s)")\[\033[0m\]$ '
  #blue tildes export PS1='\033[34m\]~~\033[0;36m\]\u\033[34m\]~\033[0;32m\]\w\[\033[0;37m\]\033[34m\]~~\[\033[0;33m\]$(__git_ps1 "(%s)")\[\033[0m\]$ '
else
  export PS1='~~\033[m\]~~\w\[\033[0;37m\]]\\$\[\033[0m\]~~ '
fi

