#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

# ---- zsh settings --------------------------------------------------

autoload -U compinit
compinit

# allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

# try to cd to a dir even if you forgot to type cd in the command
setopt AUTO_CD

## history
# timestamp history 
setopt EXTENDED_HISTORY
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# removes blank lines from history
setopt HIST_REDUCE_BLANKS
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST 


#setopt CORRECT
#setopt CORRECT_ALL


# ---- imports --------------------------------------------------


# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Alias definitions.
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# Alias definitions.
if [ -f ~/.bash_hh ]; then
  . ~/.bash_hh
fi

# Git auto-complete for branch names, etc
# if [ -f ~/.git-completion.bash ]; then
#  . ~/.git-completion.bash
# fi


# ---- exports --------------------------------------------------

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
# for python and AWS CLI
PATH=$PATH:~/.local/bin
PATH=/usr/local/opt/openjdk@11/bin:$PATH
export PATH

# This should automatically use user's preferred java version https://www.baeldung.com/java-home-on-windows-7-8-10-mac-os-x-linux
# set to v11 for emr-service
export JAVA_HOME=$(/usr/libexec/java_home -v11)

export SVN_EDITOR=emacs
export EDITOR=emacs
export VISUAL=emacs

# make Sublime Text the default editor
# note that after installing sublime for the first time, you need to run:
# ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
export EDITOR='subl -w'

# ---- shell prompt --------------------------------------------------

# %T time (hour:minute)
# %D{%f/%m/%y} date
# %D{%H:%M:%S} time (24h:minute:second)
# %n user
# %m host
# %. current dir
# %% %0

# without colors
# PROMPT='%T--%n@%m--%.--%%'

# with color
#PROMPT='%F{yellow}[%D{%H:%M:%S}]%F{black}--%F{magenta}%n%F{black}@%F{blue}%m%F{black}--%F{green}%.%F{black}--%% '

function parse_git_branch() {
  git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\(\1\)/p'
}
# with git branch
export PROMPT='%F{magenta}[%D{%H:%M:%S}]%F{black}--%F{green}%.%F{black}--%F{cyan}'$(parse_git_branch)'%F{black}--%% '

# TODO - carry over from bash
# # add the current git branch
# if [ -f ~/.git-completion.bash ]; then
#   source ~/git-prompt.sh
#   CURRENT_BRANCH='$(__git_ps1 "--(%s)")'
#   export PS1="${PS1}${CURRENT_BRANCH}--$ "
# fi







