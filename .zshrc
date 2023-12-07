#!/bin/sh
# .zshrc
#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#
# Hi friend! There are some manual steps you should do:
# 
# - Set up your Mac Terminal colors:
# Terminal > Setting > Profiles > Text tab > Background > Colors & Effects > Sliders tab > RGB Sliders > F7F2E3
# 
# - Terminal window size (bigger than default):
# Terminal > Setting > Profiles > Window tab > columns 180, rows 60
# 
# - After installing Sublime, you need to run this to access it from command line:
# $ ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl


# ---- zsh settings --------------------------------------------------

autoload -Uz compinit && compinit


# allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

# try to cd to a dir even if you forgot to type cd in the command
setopt AUTO_CD

# case insensitive completion
setopt NO_CASE_GLOB

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

HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=$HISTSIZE

# Suggest corrections after incorrect commands
setopt CORRECT
setopt CORRECT_ALL


# ---- imports --------------------------------------------------


# Alias definitions.
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# Alias definitions.
if [ -f ~/.bash_hh ]; then
  . ~/.bash_hh
fi



# ---- exports --------------------------------------------------

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
# for python and AWS CLI
PATH=$PATH:~/.local/bin
PATH=/usr/local/opt/openjdk@11/bin:$PATH
export PATH

# This should automatically use user's preferred java version https://www.baeldung.com/java-home-on-windows-7-8-10-mac-os-x-linux
# set to v11 for emr-service
# export JAVA_HOME=$(/usr/libexec/java_home -v11)


# make Sublime Text the default editor
export EDITOR='subl -w'
export SVN_EDITOR='subl -w'
export VISUAL='subl -w'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# This is needed to set up homebrew on an M1 mac (but not Intel chip) https://earthly.dev/blog/homebrew-on-m1/
eval "$(/opt/homebrew/bin/brew shellenv)"



# ---- shell prompt --------------------------------------------------
# Some of these older versions are for bash, not zshell
# Struggling a bit with the branch settings getting lost after restart, so keeping some old versions.

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
# export PROMPT='%F{yellow}[%D{%H:%M:%S}]%F{black}--%F{magenta}%n%F{black}@%F{blue}%m%F{black}--%F{green}%.%F{black}--%% '

# function parse_git_branch() {
#   # pipe output to dev null in case there's errors
#   git branch --show-current 2> /dev/null
# }
# export PROMPT='${CLOCK}${SEPARATOR}${DIRECTORY}${SEPARATOR}${CYAN}$(parse_git_branch)${SEPARATOR}%% '

source ~/bash-config/.git-prompt.sh
# GIT_PS1_SHOWCOLORHINTS=true
# GIT_PS1_SHOWDIRTYSTATE=true

# CLOCK='%F{magenta}[%D{%H:%M:%S}]'
# SEPARATOR='%F{black}--'
# DIRECTORY='%F{green}%.'
# CYAN='%F{cyan}'

# export PS1='$(__git_ps1 " (%s)")'"$PS1"
# export PROMPT='${CLOCK}${SEPARATOR}${DIRECTORY}${SEPARATOR}${CYAN}$(__git_ps1 "(%s)")${SEPARATOR}%% '

# export PROMPT='%F{magenta}[%D{%H:%M:%S}]%F{black}--%F{green}%.%F{black}--%% '

# I could just call $(__git_ps1), the extra stuff is a format string to remove a trailing space
# export PROMPT="${CLOCK}${SEPARATOR}${DIRECTORY}${SEPARATOR}${CYAN}$(__git_ps1 '(%s)')${SEPARATOR}%% "
# export PROMPT="${CLOCK}${SEPARATOR}${DIRECTORY}${SEPARATOR}${CYAN}$(__git_ps1 "(%s)")${SEPARATOR}%% "

CLOCK='%F{magenta}%D{%H:%M:%S}'
BLACK='%F{black}'
DIRECTORY='%F{green}%1~'
CYAN='%F{cyan}'

setopt PROMPT_SUBST ; PS1='[${CLOCK}${BLACK}--${DIRECTORY}${BLACK}--${CYAN}$(__git_ps1 "(%s)")${BLACK}]\$ '



export YVM_DIR=/opt/homebrew/opt/yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh
