Git repo for Alison's bash scripts and stuff


## Setup

1. Clone this repo into your home directory
``` bash
$ cd ~
$ git clone https://github.com/alisonwilbur/bash-config.git 
```
2. Create symlinks from for these files in the home directory
``` bash
$ ln -s ~/bash-config/.bashrc ~/ ;
$ ln -s ~/bash-config/.bashrc_aliases ~/ ;
$ ln -s ~/bash-config/.bashrc_profile ~/ ;
$ ln -s ~/bash-config/.bashrc_local ~/ ;
$ ln -s ~/bash-config/.emacs ~/ ;
$ ln -s ~/bash-config/.git-completion.bash ~/ ;
$ ln -s ~/bash-config/.gitconfig ~/ ;
$ ln -s ~/bash-config/.gitignore ~/ ;
$ ln -s ~/bash-config/.tmux.config ~/ ;
$ ln -s ~/bash-config/.xshrc ~/ ;
$ ln -s ~/bash-config/.zshrc ~/ ;
...
```
Note: include all files, not just those that begin with a `.`. Otherwise, `.bashrc` will throw an error and you'll be sad.



See [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-use-git-to-manage-your-user-configuration-files-on-a-linux-vps) for more info
