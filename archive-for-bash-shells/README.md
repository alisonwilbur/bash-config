Git repo for Alison's bash scripts and stuff


## Setup

1. Clone this repo into your home directory
``` bash
cd ~
mkdir Code
cd Code
git clone https://github.com/alisonwilbur/bash-config.git 
```
2. Create symlinks from for these files in the home directory
``` bash
ln -s ~/Code/bash-config/.bash_profile ~/ ;
ln -s ~/Code/bash-config/.bashrc ~/ ;
ln -s ~/Code/bash-config/.bashrc_aliases ~/ ;
ln -s ~/Code/bash-config/.bashrc_local ~/ ;
ln -s ~/Code/bash-config/.emacs ~/ ;
ln -s ~/Code/bash-config/.git-completion.bash ~/ ;
ln -s ~/Code/bash-config/.gitconfig ~/ ;
ln -s ~/Code/bash-config/.gitignore ~/ ;
ln -s ~/Code/bash-config/.tmux.config ~/ ;
ln -s ~/Code/bash-config/.zshrc ~/ ;
ln -s ~/Code/bash-config/git-prompt.sh ~/ ;
...
```


See [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-use-git-to-manage-your-user-configuration-files-on-a-linux-vps) for more info
