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


