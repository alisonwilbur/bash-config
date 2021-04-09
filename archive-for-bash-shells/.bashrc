# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Alias definitions.
if [ -f ~/.bashrc_aliases ]; then
  . ~/.bashrc_aliases
fi

# Nordstrom-only stuff
if [ -f ~/.bashrc_nord ]; then
  . ~/.bashrc_nord
fi

# Git auto-complete for branch names, etc
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


# ---- exports --------------------------------------------------

# User specific environment and startup programs

# want to be running Java 8
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

PATH=$PATH:$HOME/bin
# for python and AWS CLI
PATH=$PATH:~/.local/bin

export PATH

export SVN_EDITOR=emacs
export EDITOR=emacs
export VISUAL=emacs

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
if [ -f ~/.git-completion.bash ]; then
  source ~/git-prompt.sh
  CURRENT_BRANCH='$(__git_ps1 "--(%s)")'
  export PS1="${PS1}${CURRENT_BRANCH}--$ "
fi

# expand the Terminal history to be biggerrrrr
HISTFILESIZE=1000000000 
HISTSIZE=1000000


# ---- NVM --------------------------------------

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


# ---- Manage Java

# JENV - managed java version
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# more details at https://stackoverflow.com/questions/52524112/how-do-i-install-java-on-mac-osx-allowing-version-switching

# open jdk https://github.com/AdoptOpenJDK/homebrew-openjdk
# jdkv() {
#     version=$1
#     export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
#     java -version
#  }




