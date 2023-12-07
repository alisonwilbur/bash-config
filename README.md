Git repo for Alison's shell scripts and stuff


## Setup

1. Clone this repo into your home directory
``` bash
cd ~

# If using an SSH key:
git clone git@github.com:alisonwilbur/bash-config.git

# For a login shell:
# git clone https://github.com/alisonwilbur/bash-config.git 
```
2. Create symlinks from for these files in the home directory
``` bash
ln -s ~/bash-config/.aliases ~/ ;
ln -s ~/bash-config/.gitconfig ~/ ;
ln -s ~/bash-config/.zshrc ~/ ;
...
```
Do not make a symlink for the `.git` folder, that is used to configure bash-config as a repo.

See [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-use-git-to-manage-your-user-configuration-files-on-a-linux-vps) for more info
